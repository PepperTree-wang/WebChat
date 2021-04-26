package com.wanmait.webchat.util;

public class UserCheckNameSQLUtil {
    private String userName;
    private String SQLColumnName;
    private Integer userId;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSQLColumnName() {
        return SQLColumnName;
    }

    public void setSQLColumnName(String SQLColumnName) {
        this.SQLColumnName = SQLColumnName;
    }

    public Integer getUserID() {
        return userId;
    }

    public void setUserID(Integer userID) {
        this.userId = userID;
    }
}
