package com.cuit.pojo;

import java.io.Serializable;

/**
 * hobby
 * @author 
 */
public class Hobby implements Serializable {
    private Integer userId;

    private String hobby1;

    private String hobby2;

    private String hobby3;

    private String hobby4;

    private static final long serialVersionUID = 1L;

    public Hobby(Integer userId, String hobby1, String hobby2, String hobby3, String hobby4) {
        this.userId = userId;
        this.hobby1 = hobby1;
        this.hobby2 = hobby2;
        this.hobby3 = hobby3;
        this.hobby4 = hobby4;
    }

    public Hobby() {
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getHobby1() {
        return hobby1;
    }

    public void setHobby1(String hobby1) {
        this.hobby1 = hobby1;
    }

    public String getHobby2() {
        return hobby2;
    }

    public void setHobby2(String hobby2) {
        this.hobby2 = hobby2;
    }

    public String getHobby3() {
        return hobby3;
    }

    public void setHobby3(String hobby3) {
        this.hobby3 = hobby3;
    }

    public String getHobby4() {
        return hobby4;
    }

    public void setHobby4(String hobby4) {
        this.hobby4 = hobby4;
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
        Hobby other = (Hobby) that;
        return (this.getUserId() == null ? other.getUserId() == null : this.getUserId().equals(other.getUserId()))
            && (this.getHobby1() == null ? other.getHobby1() == null : this.getHobby1().equals(other.getHobby1()))
            && (this.getHobby2() == null ? other.getHobby2() == null : this.getHobby2().equals(other.getHobby2()))
            && (this.getHobby3() == null ? other.getHobby3() == null : this.getHobby3().equals(other.getHobby3()))
            && (this.getHobby4() == null ? other.getHobby4() == null : this.getHobby4().equals(other.getHobby4()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getUserId() == null) ? 0 : getUserId().hashCode());
        result = prime * result + ((getHobby1() == null) ? 0 : getHobby1().hashCode());
        result = prime * result + ((getHobby2() == null) ? 0 : getHobby2().hashCode());
        result = prime * result + ((getHobby3() == null) ? 0 : getHobby3().hashCode());
        result = prime * result + ((getHobby4() == null) ? 0 : getHobby4().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", userId=").append(userId);
        sb.append(", hobby1=").append(hobby1);
        sb.append(", hobby2=").append(hobby2);
        sb.append(", hobby3=").append(hobby3);
        sb.append(", hobby4=").append(hobby4);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}