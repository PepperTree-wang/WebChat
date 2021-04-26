package com.wanmait.webchat.user;

import com.wanmait.webchat.service.UserService;
import com.wanmait.webchat.util.UserCheckNameSQLUtil;
import com.wanmait.webchat.vo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceTest {

    @Resource
    private UserService userService;

    @Test
    public void testGetUser(){
        User user = userService.getUser(2);
        System.out.println(user.getName());
        System.out.println(user.getProfile());
    }

    @Test
    public void testSignUp(){
        User user = new User();
        user.setName("testname");
        user.setNickname("testname");
        user.setPass("testPassWord");
        userService.signUp(user);
    }

    /**
     * 这个有问题，返回的结果恒定为false
     */
    @Test
    public void testCheckName(){
        UserCheckNameSQLUtil check = new UserCheckNameSQLUtil();
        check.setUserID(3);
        check.setUserName("zhangsan");
        check.setSQLColumnName("name");
        boolean flag = userService.checkname(check);
        System.out.println("查询结果为："+flag);
    }

}
