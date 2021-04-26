package com.wanmait.webchat.service.impl;

import com.wanmait.webchat.mapper.UserMapper;
import com.wanmait.webchat.service.UserService;
import com.wanmait.webchat.util.UserCheckNameSQLUtil;
import com.wanmait.webchat.vo.User;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service("userService")
public class UserSerivceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public User signIn(User user) {
        return userMapper.signIn(user);
    }

    @Override
    public boolean checkname(UserCheckNameSQLUtil checkNameSQLUtil) {
        User sameUser = userMapper.checkname(checkNameSQLUtil);
        //sql中排除了用户本身，因为用户修改个人信息时，自身信息不能作为重复条件
        //能够查询到符合条件的用户，重复了，返回true
        if (null != sameUser) return true;
        return false;
    }

    @Override
    public int getID(String name) {
        return  userMapper.getID(name);
    }

    @Override
    public User getUser(Integer userID) {
        return userMapper.getUser(userID);
    }

    @Override
    public void signUp(User registerUser) {
        userMapper.signUp(registerUser);
    }

    @Override
    public User selectByPrimaryKey(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User getFriend(Integer id) {
        return userMapper.getFriend(id);
    }

    @Override
    public void insert(User user) {

    }

    @Override
    public void update(User user) {
        userMapper.update(user);
    }

    @Override
    public void delete(User user) {

    }

    @Override
    public void select(User user) {

    }


}
