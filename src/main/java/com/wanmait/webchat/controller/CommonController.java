package com.wanmait.webchat.controller;

import com.wanmait.webchat.service.ChatService;
import com.wanmait.webchat.service.FriendsService;
import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class CommonController {

    @Resource()
    private ChatService chatService;

    @Resource()
    private FriendsService friendsService;



    //查看聊天首页,并将用户好友以及最近聊天好友转发到index
    @RequestMapping("/user/index")
    public String index(HttpServletRequest request){


        return "jsp/user/index";
    }

    //跳转到用户个人信息设置页面
    @RequestMapping("/user/settings")
    public String settings(){
        return "jsp/user/settings";
    }

    //查看项目日志
    @RequestMapping("/log")
    public ModelAndView log(){
        ModelAndView view = new ModelAndView();
        view.setViewName("redirect:/log.jsp");
        return view;
    }

    //登录页面，网站欢迎页
    @RequestMapping("/")
    public ModelAndView signin(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("jsp/signin");
        return mav;
    }

    //注册页面
    @RequestMapping("/signup")
    public ModelAndView signup(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("jsp/signup");
        return mav;
    }

    //重置密码
    @RequestMapping("/user/passwordReset")
    public ModelAndView passwordReset(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("jsp/user/password-reset");
        return mav;
    }

}
