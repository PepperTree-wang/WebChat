package com.wanmait.webchat.util;

import com.wanmait.webchat.vo.User;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {

    //通过用户信息
    // 获取用户已经保存的Cookie
    public static Cookie getUserCookie(String value,Cookie [] cookies){
        //通过遍历cookie数组的方式获得目标cookie
        if (cookies != null){
            for (Cookie cookie: cookies) {
                if (value.equals(cookie.getValue())){
                    return cookie;
                }
            }
        }
        return null;
    }


    //保存信息到Cookie
    public static Cookie setCookie(String name, String value, int time ){
        Cookie userCookie = new Cookie(name,value);
        userCookie.setMaxAge(time);
        userCookie.setPath("/");
        return userCookie;
    }

    //删除Cookie信息
    public static void deleteCookie(User user, HttpServletRequest request,HttpServletResponse response){

        //判断用户的信息是否已经保存到Cookie中
        Cookie [] cookies = request.getCookies();
        Cookie nameCookie = getUserCookie(user.getName(),cookies);
        if (nameCookie != null){//该用户信息已经保存到cookie中
            //清除用户名
            Cookie testCookie = setCookie("name",null,0);
            response.addCookie(testCookie);

            //清除密码
            Cookie passCookie = setCookie("pass",null,0);
            response.addCookie(passCookie);
        }

    }

}
