package com.wanmait.webchat.filter;

import com.wanmait.webchat.vo.User;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/user/*")
public class UserFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest httpServletRequest   = (HttpServletRequest)request;
        HttpServletResponse httpServletResponse = (HttpServletResponse)response;

        //对过滤的内容进行设置
        String requestPath = httpServletRequest.getRequestURI();
        if(requestPath.contains("/signin")||requestPath.contains("/signup")||requestPath.contains("/checkname")||requestPath.contains("/static/"))
        {
            chain.doFilter(request,response);
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null){
            String path = httpServletRequest.getContextPath();
            httpServletResponse.sendRedirect(path+"/");
        }else {
            chain.doFilter(request,response);
        }
    }
}
