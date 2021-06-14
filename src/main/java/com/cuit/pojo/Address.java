package com.cuit.pojo;

import java.io.Serializable;

/**
 * address
 * @author 
 */
public class Address implements Serializable {
    private Integer userId;

    private String address1;

    private String address2;

    private String address3;

    private String address4;

    public Address(Integer userId, String address1, String address2, String address3, String address4, String address5) {
        this.userId = userId;
        this.address1 = address1;
        this.address2 = address2;
        this.address3 = address3;
        this.address4 = address4;
        this.address5 = address5;
    }

    public Address() {
    }

    private String address5;

    private static final long serialVersionUID = 1L;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getAddress3() {
        return address3;
    }

    public void setAddress3(String address3) {
        this.address3 = address3;
    }

    public String getAddress4() {
        return address4;
    }

    public void setAddress4(String address4) {
        this.address4 = address4;
    }

    public String getAddress5() {
        return address5;
    }

    public void setAddress5(String address5) {
        this.address5 = address5;
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
        Address other = (Address) that;
        return (this.getUserId() == null ? other.getUserId() == null : this.getUserId().equals(other.getUserId()))
            && (this.getAddress1() == null ? other.getAddress1() == null : this.getAddress1().equals(other.getAddress1()))
            && (this.getAddress2() == null ? other.getAddress2() == null : this.getAddress2().equals(other.getAddress2()))
            && (this.getAddress3() == null ? other.getAddress3() == null : this.getAddress3().equals(other.getAddress3()))
            && (this.getAddress4() == null ? other.getAddress4() == null : this.getAddress4().equals(other.getAddress4()))
            && (this.getAddress5() == null ? other.getAddress5() == null : this.getAddress5().equals(other.getAddress5()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getUserId() == null) ? 0 : getUserId().hashCode());
        result = prime * result + ((getAddress1() == null) ? 0 : getAddress1().hashCode());
        result = prime * result + ((getAddress2() == null) ? 0 : getAddress2().hashCode());
        result = prime * result + ((getAddress3() == null) ? 0 : getAddress3().hashCode());
        result = prime * result + ((getAddress4() == null) ? 0 : getAddress4().hashCode());
        result = prime * result + ((getAddress5() == null) ? 0 : getAddress5().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", userId=").append(userId);
        sb.append(", address1=").append(address1);
        sb.append(", address2=").append(address2);
        sb.append(", address3=").append(address3);
        sb.append(", address4=").append(address4);
        sb.append(", address5=").append(address5);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}