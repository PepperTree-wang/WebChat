package com.wanmait.webchat.service;

import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ChatServiceTest {
    @Resource
    ChatService chatService;

    @Test
    public void testGetRecentChats()
    {
        Chat chat = new Chat();
        User friend = new User();
        User host = new User();
        friend.setId(1);
        host.setId(2);
        chat.setFriend(friend);
        chat.setFriend(host);
        ArrayList<Chat> chats = chatService.getRecentChats(host);
        chats.forEach(System.out::println);
    }

    @Test
    public void testGetNewMessage(){
        Chat chat = new Chat();
        chat.setId(112);
        User host = new User();
        User friend = new User();
        host.setId(2);
        friend.setId(3);
        chat.setHost(host);
        chat.setFriend(friend);

        List<Chat> chats = chatService.getNewChats(chat);
        for (Chat c :
                chats) {

            System.out.println("chat-host-nickname:"+c.getHost().getNickname());
            System.out.println("chat-content:"+c.getContent());
            System.out.println("chat-time:"+c.getTime());
        }

    }
}
