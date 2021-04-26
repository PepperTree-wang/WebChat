package com.wanmait.webchat.mapper;

import com.wanmait.webchat.vo.Chat;
import com.wanmait.webchat.vo.User;
import org.apache.ibatis.annotations.Param;
import java.util.ArrayList;
import java.util.List;

public interface ChatMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Chat record);

    int insertSelective(Chat record);

    Chat selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Chat record);

    int updateByPrimaryKey(Chat record);

    int saveChat(Chat chat);

    Chat getChatTime(Chat chat);
    ArrayList<Chat> getRecentChats(User user);
    ArrayList<Chat> getChatsWithFriend(@Param("host") User host,@Param("friend") User friend);

    List<Chat> getNewChats(Chat chat);
}