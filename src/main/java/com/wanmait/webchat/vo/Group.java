package com.wanmait.webchat.vo;

import java.io.Serializable;

public class Group implements Serializable {
    private Integer id;

    private User host;

    private User manager;

    private User user1;

    private User user2;

    private User user3;

    private User user4;

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

    public User getManager() {
        return manager;
    }

    public void setManager(User manager) {
        this.manager = manager;
    }

    public User getUser1() {
        return user1;
    }

    public void setUser1(User user1) {
        this.user1 = user1;
    }

    public User getUser2() {
        return user2;
    }

    public void setUser2(User user2) {
        this.user2 = user2;
    }

    public User getUser3() {
        return user3;
    }

    public void setUser3(User user3) {
        this.user3 = user3;
    }

    public User getUser4() {
        return user4;
    }

    public void setUser4(User user4) {
        this.user4 = user4;
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
        sb.append(", manager=").append(manager);
        sb.append(", user1=").append(user1);
        sb.append(", user2=").append(user2);
        sb.append(", user3=").append(user3);
        sb.append(", user4=").append(user4);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}