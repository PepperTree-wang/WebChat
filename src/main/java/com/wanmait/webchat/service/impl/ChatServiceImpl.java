package com.wanmait.webchat.service.impl;

import com.wanmait.webchat.mapper.ChatMapper;
import com.wanmait.webchat.mapper.UserMapper;
import com.wanmait.webchat.service.ChatService;
import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("chatService")
public class ChatServiceImpl implements ChatService {

    @Override
    public List<Chat> getNewChats(Chat chat) {
        return chatMapper.getNewChats(chat);
    }

    /**
     * 设定查询的聊天记录的ChatList中的Host和Friend的详细信息
     * @param chats 通过mapper获取的聊天记录的集合
     * @return  增加Host和Friend信息的聊天记录
     */
    private ArrayList<Chat> setChatHostAndFriend(ArrayList<Chat> chats){
        for (Chat chat :
                chats) {
            chat.setHost(userMapper.getUser(chat.getHost().getId()));
            chat.setFriend(userMapper.getUser(chat.getFriend().getId()));
        }
        return chats;
    }


    /**获取和好友的最近聊天信息
     *
     * @param host 发信息的人
     * @param friend 收信息的人
     * @return 和好友的最近15条聊天记录的集合
     */
    @Override
    public ArrayList<Chat> getChatsWithFriend(User host,User friend){
        ArrayList<Chat> chatsWithFriend = chatMapper.getChatsWithFriend(host, friend);
        return setChatHostAndFriend(chatsWithFriend);
    }

    /**
     * 最多获取15天最近沟通的用户
     * @param user 登录的用户
     * @return 最近沟通的聊天内容的集合
     */
    @Override
    public ArrayList<Chat> getRecentChats(User user) {
        ArrayList<Chat> chats = chatMapper.getRecentChats(user);
        return setChatHostAndFriend(chats);
    }

    @Override
    public int saveChat(Chat chat) {
        return chatMapper.saveChat(chat);
    }

    @Override
    public Chat getChatTime(Chat chat) {
        return chatMapper.getChatTime(chat);
    }



    @Resource
    private UserMapper userMapper;

    @Resource
    private ChatMapper chatMapper;

    @Override
    public void insert(Chat chat) {

    }

    @Override
    public void update(Chat chat) {

    }

    @Override
    public void delete(Chat chat) {

    }

    @Override
    public void select(Chat chat) {

    }


}
