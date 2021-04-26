package com.wanmait.webchat.mapper;

import com.wanmait.webchat.vo.Friends;
import com.wanmait.webchat.vo.User;

import java.util.ArrayList;

public interface FriendsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Friends record);

    int insertSelective(Friends record);

    Friends selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Friends record);

    int updateByPrimaryKey(Friends record);
    ArrayList<Integer> getFriensID(User user);
}