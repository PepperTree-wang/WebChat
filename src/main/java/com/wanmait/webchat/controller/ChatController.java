package com.wanmait.webchat.controller;

import com.wanmait.webchat.service.ChatService;
import com.wanmait.webchat.service.UserService;
import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author drago
 */
@Controller
@RequestMapping("/user/chat")
public class ChatController {
    /**
     * ajax长轮询获取最新消息，通过消息id判断是否存在新消息
     * @param chatId 聊天框中最新一条聊天记录的id
     * @param request 请求
     * @return 消息网页源码
     */
    @RequestMapping("getNewMessage")
    public String getNewMessage(int chatId ,int  loginUserId, int friendId,HttpServletRequest request){
        //多参数归一
        Chat chat = this.iDsChangeToChat(chatId,loginUserId,friendId);
        //查询最新的消息集合
        List<Chat> chats = chatService.getNewChats(chat);

        request.setAttribute("newChats",chats);
        return "jsp/include/newMessages";
    }


    /**
     * ajax将消息写入数据库
     * 之后转发到oneMessage.jsp将本条消息添加样式进行显示
     * 显示完成将整个网页返回ajax
     * @param message 包含，用户ID，好友id，消息文本
     * @param request   请求
     * @return  先转发到singleMessage进行渲染，完成之后将静态网页代码返回ajax
     */
    @RequestMapping("saveMessageWithAjax")
    public String saveMessageWithAjax(String message,HttpServletRequest request){
        //list转换为Chat对象
        Chat chat = messageToChat(message.split(","));
        //消息写入数据库
        chatService.saveChat(chat);
        //查询刚才写入数据库的消息的所有信息
        Chat chatWithInfo = chatService.getChatTime(chat);
        //获取这一条聊天信息的host用户对象与friend用户对象
        chat.setHost(userService.getUser(chat.getHost().getId()));
        chat.setFriend(userService.getUser(chat.getFriend().getId()));
        //转发到一个jsp，返回给ajax一个渲染好的网页
        request.setAttribute("chat",chatWithInfo);
        return "jsp/include/singleMessage";
    }

    /**
     * 查询和好友的最近的聊天记录
     * @param id 好友的id
     * @param request 请求
     * @return 转发的网页
     */
    @RequestMapping("singleChat")
    public String singleChat(int id,HttpServletRequest request){
        HttpSession session = request.getSession();
        //登录的用户
        User user           = (User) session.getAttribute("user");
        //好友
        User chatFriend     = userService.getUser(id);
        request.setAttribute("chatFriend",chatFriend);
        //将好友的id放入request，在ajax轮询消息的时候获取使用
        request.setAttribute("friendId",id);
        //获取近15条聊天信息
        ArrayList<Chat> chatsWithFriend = chatService.getChatsWithFriend(user,chatFriend);
        request.setAttribute("chatsWithFriend",chatsWithFriend);

        return "jsp/user/singleChat";
    }


    /**
     *  将存放chat消息的ArrayList转换为Chat对象
     * @param message 包含用户ID和好友ID以及发送的消息
     * @return chat对象
     */
    private Chat messageToChat(String[] message){

        Chat chat = new Chat();
        User host = new User();
        User friend = new User();

        int hostId = Integer.parseInt(message[0]);
        int friendId = Integer.parseInt(message[1]);
        host.setId(hostId);
        friend.setId(friendId);
        chat.setHost(host);
        chat.setFriend(friend);
        chat.setContent(message[2]);

        return chat;
    }

    /**
     * 将聊天的id和登录用户的id以及好友的id组合成为chat对象
     * 这里chat对象仅仅是用来存放消息，并不是真正在数据库中真实存在的对象
     * @param chatId 聊天消息的id
     * @param hostId 登录用户的id
     * @param friendId 好友的id
     * @return chat对象
     */
    private Chat iDsChangeToChat(int chatId, int hostId, int friendId){
        Chat chat = new Chat();
        chat.setId(chatId);
        User host = new User();
        User friend = new User();
        host.setId(hostId);
        friend.setId(friendId);
        chat.setHost(host);
        chat.setFriend(friend);
        return chat;
    }



    /**
     * 注入对象
     */
    @Resource
    private UserService userService;
    @Resource
    private ChatService chatService;

}
