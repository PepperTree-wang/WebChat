package com.wanmait.webchat.util;

import java.util.ArrayList;


/**
 * @author drago
 */
public class StringUtil {

    /**
     * 对客户端发送来的消息进行处理，分隔开登录用户ID和好友的ID
     * 以及用户发送的消息内容
     * @param message 带有用户ID和好友ID以及发送的消息的字符串
     * @return 未指定泛型的list对象
     */
    public static ArrayList<String> cutMessage(String message){
        ArrayList<String> messageList = new ArrayList<>();
        int j = 2;
        for (int i = 0;i<j;i++){
            //找到第一个分隔符
            int flag = message.indexOf(",");
            //获取ID
            int userId = Integer.parseInt(message.substring(0,flag));
            //更新消息内容
            message = message.substring(flag+1);
            messageList.add(userId+"");
        }
        messageList.add(message);
       return messageList;
    }
}
