package com.wanmait.webchat.service;

import com.wanmait.webchat.util.UserCheckNameSQLUtil;
import com.wanmait.webchat.vo.User;

public interface UserService extends CommonService<User> {
    User signIn(User user);
    boolean checkname(UserCheckNameSQLUtil checkSql);
    int getID(String name);
    User getUser(Integer userID);
    void signUp(User registerUser);
    User selectByPrimaryKey(Integer id);
    User getFriend(Integer id);
}
