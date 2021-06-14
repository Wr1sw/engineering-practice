package com.cuit.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * shopcar
 * @author 
 */
public class Shopcar implements Serializable {
    private Integer shopcarId;

    private Date goodsAddtime;

    private Integer goodsNum;

    private String shopcarPicture;

    private Integer userId;

    private Integer goodsId;

    private static final long serialVersionUID = 1L;

    public Shopcar(Integer shopcarId, Date goodsAddtime, Integer goodsNum, String shopcarPicture, Integer userId, Integer goodsId) {
        this.shopcarId = shopcarId;
        this.goodsAddtime = goodsAddtime;
        this.goodsNum = goodsNum;
        this.shopcarPicture = shopcarPicture;
        this.userId = userId;
        this.goodsId = goodsId;
    }

    public Shopcar() {
    }

    public Integer getShopcarId() {
        return shopcarId;
    }

    public void setShopcarId(Integer shopcarId) {
        this.shopcarId = shopcarId;
    }

    public Date getGoodsAddtime() {
        return goodsAddtime;
    }

    public void setGoodsAddtime(Date goodsAddtime) {
        this.goodsAddtime = goodsAddtime;
    }

    public Integer getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(Integer goodsNum) {
        this.goodsNum = goodsNum;
    }

    public String getShopcarPicture() {
        return shopcarPicture;
    }

    public void setShopcarPicture(String shopcarPicture) {
        this.shopcarPicture = shopcarPicture;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
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
        Shopcar other = (Shopcar) that;
        return (this.getShopcarId() == null ? other.getShopcarId() == null : this.getShopcarId().equals(other.getShopcarId()))
            && (this.getGoodsAddtime() == null ? other.getGoodsAddtime() == null : this.getGoodsAddtime().equals(other.getGoodsAddtime()))
            && (this.getGoodsNum() == null ? other.getGoodsNum() == null : this.getGoodsNum().equals(other.getGoodsNum()))
            && (this.getShopcarPicture() == null ? other.getShopcarPicture() == null : this.getShopcarPicture().equals(other.getShopcarPicture()))
            && (this.getUserId() == null ? other.getUserId() == null : this.getUserId().equals(other.getUserId()))
            && (this.getGoodsId() == null ? other.getGoodsId() == null : this.getGoodsId().equals(other.getGoodsId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getShopcarId() == null) ? 0 : getShopcarId().hashCode());
        result = prime * result + ((getGoodsAddtime() == null) ? 0 : getGoodsAddtime().hashCode());
        result = prime * result + ((getGoodsNum() == null) ? 0 : getGoodsNum().hashCode());
        result = prime * result + ((getShopcarPicture() == null) ? 0 : getShopcarPicture().hashCode());
        result = prime * result + ((getUserId() == null) ? 0 : getUserId().hashCode());
        result = prime * result + ((getGoodsId() == null) ? 0 : getGoodsId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", shopcarId=").append(shopcarId);
        sb.append(", goodsAddtime=").append(goodsAddtime);
        sb.append(", goodsNum=").append(goodsNum);
        sb.append(", shopcarPicture=").append(shopcarPicture);
        sb.append(", userId=").append(userId);
        sb.append(", goodsId=").append(goodsId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}