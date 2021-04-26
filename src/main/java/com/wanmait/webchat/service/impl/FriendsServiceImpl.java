package com.wanmait.webchat.service.impl;

import com.wanmait.webchat.mapper.FriendsMapper;
import com.wanmait.webchat.service.FriendsService;
import com.wanmait.webchat.service.UserService;
import com.wanmait.webchat.vo.Friend;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;

@Service("friendsService")
public class FriendsServiceImpl implements FriendsService {

    @Override
    public ArrayList<User> getFriendsInfo(ArrayList<Integer> friendsID) {
        ArrayList<User> friendsInfo = new ArrayList<>();
        for (int friendID:friendsID) {
            User oneUser =userService.getUser(friendID);
            friendsInfo.add(oneUser);
        }
        return friendsInfo;
    }

    @Override
    public ArrayList<Integer> getFriensID(User user) {
        return friendsMapper.getFriensID(user);
    }

    @Resource()
    private FriendsMapper friendsMapper;
    @Resource
    private UserService userService;

    @Override
    public void insert(Friend friend) {

    }

    @Override
    public void update(Friend friend) {

    }

    @Override
    public void delete(Friend friend) {

    }

    @Override
    public void select(Friend friend) {

    }




}
