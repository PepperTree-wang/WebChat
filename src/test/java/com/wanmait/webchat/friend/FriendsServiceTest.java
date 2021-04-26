package com.wanmait.webchat.friend;

import com.wanmait.webchat.service.FriendsService;
import com.wanmait.webchat.vo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class FriendsServiceTest {

    @Test
    public void testGetFriendsInfo(){
        ArrayList<Integer> friendsID = new ArrayList<>();
        friendsID.add(2);
        friendsID.add(3);
        friendsID.add(4);
        ArrayList<User> friendsList = friendsService.getFriendsInfo(friendsID);
        for (User friend :
                friendsList) {
            System.out.println(friend.getProfile());
        }
    }
    @Resource
    private FriendsService friendsService;
}
