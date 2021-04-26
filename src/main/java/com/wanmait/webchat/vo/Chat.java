package com.wanmait.webchat.vo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class Chat implements Serializable {
    private Integer id;

    private User host;

    private User friend;

    private Group group;

    private String content;

    private Timestamp time;

    private Boolean enable;

    private static final long serialVersionUID = 1L;


    public User getHost() {
        return host;
    }

    public Group getGroup() {
        return group;
    }

    public void setHost(User host) {
        this.host = host;
    }

    public User getFriend() {
        return friend;
    }

    public void setFriend(User friend) {
        this.friend = friend;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }



    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", host=").append(host);
        sb.append(", friend=").append(friend);
        sb.append(", group=").append(group);
        sb.append(", content=").append(content);
        sb.append(", time=").append(time);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}