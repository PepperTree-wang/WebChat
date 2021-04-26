package com.wanmait.webchat.mapper;

import com.wanmait.webchat.util.UserCheckNameSQLUtil;
import com.wanmait.webchat.vo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    void signUp(User registerUser);

    User getFriend(Integer id);
    User signIn(User user);
    User checkname(UserCheckNameSQLUtil checkNameSQLUtil);
    int  getID(String name);
    User getUser(Integer userID);
    int  update(User user);
}