package com.wanmait.webchat.vo;

import java.io.Serializable;

public class Friends implements Serializable {
    private Integer id;

    private User host;

    private User friend;

    private Boolean enable;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getHost() {
        return host;
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

    public static long getSerialVersionUID() {
        return serialVersionUID;
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
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}