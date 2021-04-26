package com.wanmait.webchat.controller;

import com.wanmait.webchat.service.ChatService;
import com.wanmait.webchat.service.FriendsService;
import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
@RequestMapping("/user/include")
public class IncludeJSPController {

    @Resource
    private ChatService chatService;
    @Resource
    private FriendsService friendsService;

    @RequestMapping("recentChats")
    public String recentChats(HttpServletRequest request){
        User user = (User) (request.getSession().getAttribute("user"));
        //获取最近聊天的好友信息以及与好友的最近一条聊天记录
        ArrayList<Chat> recentChat = chatService.getRecentChats(user);
        request.setAttribute("recentChat",recentChat);

        //获取所有好友
        ArrayList<Integer> friendsId = friendsService.getFriensID(user);
        ArrayList<User> friendsInfo = friendsService.getFriendsInfo(friendsId);
        request.setAttribute("friendsInfo",friendsInfo);
        return "jsp/include/recentChats";
    }

}
