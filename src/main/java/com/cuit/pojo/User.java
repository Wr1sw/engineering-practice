package com.cuit.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * user
 * @author 
 */
public class User implements Serializable {
    private Integer userId;

    private String userName;

    private String userPassword;

    private String userEmail;

    private String userTelphone;

    public User(Integer userId, String userName, String userPassword, String userEmail, String userTelphone, String userQq, Date userBirthday, Date userRegistertime, String userPictureurl) {
        this.userId = userId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userTelphone = userTelphone;
        this.userQq = userQq;
        this.userBirthday = userBirthday;
        this.userRegistertime = userRegistertime;
        this.userPictureurl = userPictureurl;
    }

    public User() {
    }

    private String userQq;

    private Date userBirthday;

    private Date userRegistertime;

    private String userPictureurl;

    private static final long serialVersionUID = 1L;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserTelphone() {
        return userTelphone;
    }

    public void setUserTelphone(String userTelphone) {
        this.userTelphone = userTelphone;
    }

    public String getUserQq() {
        return userQq;
    }

    public void setUserQq(String userQq) {
        this.userQq = userQq;
    }

    public Date getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

    public Date getUserRegistertime() {
        return userRegistertime;
    }

    public void setUserRegistertime(Date userRegistertime) {
        this.userRegistertime = userRegistertime;
    }

    public String getUserPictureurl() {
        return userPictureurl;
    }

    public void setUserPictureurl(String userPictureurl) {
        this.userPictureurl = userPictureurl;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        User other = (User) that;
        return (this.getUserId() == null ? other.getUserId() == null : this.getUserId().equals(other.getUserId()))
            && (this.getUserName() == null ? other.getUserName() == null : this.getUserName().equals(other.getUserName()))
            && (this.getUserPassword() == null ? other.getUserPassword() == null : this.getUserPassword().equals(other.getUserPassword()))
            && (this.getUserEmail() == null ? other.getUserEmail() == null : this.getUserEmail().equals(other.getUserEmail()))
            && (this.getUserTelphone() == null ? other.getUserTelphone() == null : this.getUserTelphone().equals(other.getUserTelphone()))
            && (this.getUserQq() == null ? other.getUserQq() == null : this.getUserQq().equals(other.getUserQq()))
            && (this.getUserBirthday() == null ? other.getUserBirthday() == null : this.getUserBirthday().equals(other.getUserBirthday()))
            && (this.getUserRegistertime() == null ? other.getUserRegistertime() == null : this.getUserRegistertime().equals(other.getUserRegistertime()))
            && (this.getUserPictureurl() == null ? other.getUserPictureurl() == null : this.getUserPictureurl().equals(other.getUserPictureurl()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getUserId() == null) ? 0 : getUserId().hashCode());
        result = prime * result + ((getUserName() == null) ? 0 : getUserName().hashCode());
        result = prime * result + ((getUserPassword() == null) ? 0 : getUserPassword().hashCode());
        result = prime * result + ((getUserEmail() == null) ? 0 : getUserEmail().hashCode());
        result = prime * result + ((getUserTelphone() == null) ? 0 : getUserTelphone().hashCode());
        result = prime * result + ((getUserQq() == null) ? 0 : getUserQq().hashCode());
        result = prime * result + ((getUserBirthday() == null) ? 0 : getUserBirthday().hashCode());
        result = prime * result + ((getUserRegistertime() == null) ? 0 : getUserRegistertime().hashCode());
        result = prime * result + ((getUserPictureurl() == null) ? 0 : getUserPictureurl().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", userId=").append(userId);
        sb.append(", userName=").append(userName);
        sb.append(", userPassword=").append(userPassword);
        sb.append(", userEmail=").append(userEmail);
        sb.append(", userTelphone=").append(userTelphone);
        sb.append(", userQq=").append(userQq);
        sb.append(", userBirthday=").append(userBirthday);
        sb.append(", userRegistertime=").append(userRegistertime);
        sb.append(", userPictureurl=").append(userPictureurl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}