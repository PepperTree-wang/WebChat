package com.wanmait.webchat.service;

import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public interface ChatService extends CommonService<Chat> {
    ArrayList<Chat> getRecentChats(User user);
    ArrayList<Chat> getChatsWithFriend(User host,User friend);
    int saveChat(Chat chat);
    Chat getChatTime(Chat chat);

    List<Chat> getNewChats(Chat chat);
}
