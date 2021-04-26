package com.wanmait.webchat.controller;

import com.alibaba.druid.sql.dialect.mysql.ast.statement.DrdsRollbackDDLJob;
import com.wanmait.webchat.service.UserService;
import com.wanmait.webchat.util.CookieUtil;
import com.wanmait.webchat.util.SaveFileUtil;
import com.wanmait.webchat.util.UserCheckNameSQLUtil;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author drago
 */
@Controller
@RequestMapping("/user")
public class UserController {



    /**注入对象

     */
    @Resource()
    private UserService userService;

    /**更新用户信息
     *
     * @param user 登录的用户
     * @param profileImg    更改头像是上传的头像
     * @param request 请求
     * @return 修改个人信息完成重新回到设置页
     */
    @RequestMapping("update")
    public String update(User user, MultipartFile profileImg, HttpServletRequest request){

        //用户上传了头像就更新
        if (!profileImg.isEmpty()){
            //获取文件保存路径
            String filePath = request.getServletContext().getRealPath("/WEB-INF/static/dist/assets/images");
            //将用户头像保存到本地，返回文件名
            String profileString = SaveFileUtil.getSave().saveProfile(profileImg, filePath);
            user.setProfile(profileString);
        }

        //获取用户id
        user.setId(((User)request.getSession().getAttribute("user")).getId());
        //用户信息更新到数据库；
        userService.update(user);

        // 并将用户的新信息重新放入session
        HttpSession session = request.getSession();
        session.setAttribute("user",user);
        return "jsp/user/settings";
    }

    //退出登录
    @RequestMapping("signOut")
    public String signOut(HttpSession session){
        session.removeAttribute("user");
        return "jsp/signin";
    }

    //用户名查重
    //用户个人中心中，修改个人信息依旧会调用此函数
    @RequestMapping("checkname")
    public void checkName(String data,String sqlname ,HttpServletRequest request ,HttpServletResponse response){
        //获取登录的用户的id
        int  userID = 0;
        User user = (User)(request.getSession().getAttribute("user"));
        if (user != null){
            userID = user.getId();
        }
        UserCheckNameSQLUtil checkSql = new UserCheckNameSQLUtil();
        checkSql.setUserName(data);
        checkSql.setSQLColumnName(sqlname);
        checkSql.setUserID(userID);

        boolean flag = userService.checkname(checkSql);

        try {
            PrintWriter write = response.getWriter();
            write.print(flag+"");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**注册
     *
     * @param user 登录用户
     * @param session   session
     * @return  转发
     */
    @RequestMapping("signup")
    public ModelAndView signUp(User user,HttpSession session ){
        //向数据库添加用户
        userService.signUp(user);
        //获取新注册的用户ID
        int userID = userService.getID(user.getName());
        User userLogin = userService.getUser(userID);
        //用户信息放入session
        session.setAttribute("user",userLogin);
        ModelAndView view = new ModelAndView();
        view.setViewName("/jsp/user/index");
        return view;
    }

    /**登录
     *
     * @param user 登录用户
     * @param request   请求
     * @param response  相应
     * @return 转发的网页
     */
    @RequestMapping("signin")
    public ModelAndView signIn(User user, HttpServletRequest request,HttpServletResponse response){
        ModelAndView view = new ModelAndView();
        //检查登录
        User userLogin = userService.signIn(user);
        //判断是否登陆成功
        if (null != userLogin){
          //如果勾选保存密码，将密码保存到Cookie
          String checkInpueValue = "on";
            if (checkInpueValue.equals(request.getParameter("remberpass"))){
                saveToCookie(user, response);
            }else {
                CookieUtil.deleteCookie(user, request,response);
            }
            //设置session
            request.getSession().setAttribute("user",userLogin);
            view.setViewName("redirect:/user/index");
        }else{//返回登录页
            String remind = "用户名或密码错误！";
            view.addObject("remind",remind);
            view.setViewName("jsp/signin");
        }
        return view;
    }

    /**将用户信息保存到Cookie
     *
     * @param user 登录的用户
     * @param response 相应
     */
    public void saveToCookie( User user , HttpServletResponse response){
        Cookie nameCookie =  CookieUtil.setCookie("name",user.getName(),60*60*24*10);
        Cookie passCookie =   CookieUtil.setCookie("pass",user.getPass(),60*60*24*10);
        response.addCookie(nameCookie);
        response.addCookie(passCookie);

    }

}
