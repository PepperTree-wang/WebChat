package com.wanmait.webchat.service;

import com.wanmait.webchat.vo.Friend;
import com.wanmait.webchat.vo.User;

import java.util.ArrayList;

public interface FriendsService extends CommonService<Friend> {
    ArrayList<Integer> getFriensID(User user);
    ArrayList<User> getFriendsInfo(ArrayList<Integer> friendsID);
}
