package com.cuit.pojo;

import java.io.Serializable;

/**
 * goods
 * @author 
 */
public class Goods implements Serializable {
    /**
     * 商品id
     */
    private Integer goodsId;

    /**
     * 商品名
     */
    private String goodsName;

    /**
     * 商品类型
     */
    private String goodsType;

    /**
     * 销售量
     */
    private String goodsBuycount;

    /**
     * 商品价格
     */
    private Double goodsPrice;

    /**
     * s
     */
    private Integer goodsRemainnum;

    private static final long serialVersionUID = 1L;

    public Goods(Integer goodsId, String goodsName, String goodsType, String goodsBuycount, Double goodsPrice, Integer goodsRemainnum) {
        this.goodsId = goodsId;
        this.goodsName = goodsName;
        this.goodsType = goodsType;
        this.goodsBuycount = goodsBuycount;
        this.goodsPrice = goodsPrice;
        this.goodsRemainnum = goodsRemainnum;
    }

    public Goods() {
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(String goodsType) {
        this.goodsType = goodsType;
    }

    public String getGoodsBuycount() {
        return goodsBuycount;
    }

    public void setGoodsBuycount(String goodsBuycount) {
        this.goodsBuycount = goodsBuycount;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getGoodsRemainnum() {
        return goodsRemainnum;
    }

    public void setGoodsRemainnum(Integer goodsRemainnum) {
        this.goodsRemainnum = goodsRemainnum;
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
        Goods other = (Goods) that;
        return (this.getGoodsId() == null ? other.getGoodsId() == null : this.getGoodsId().equals(other.getGoodsId()))
            && (this.getGoodsName() == null ? other.getGoodsName() == null : this.getGoodsName().equals(other.getGoodsName()))
            && (this.getGoodsType() == null ? other.getGoodsType() == null : this.getGoodsType().equals(other.getGoodsType()))
            && (this.getGoodsBuycount() == null ? other.getGoodsBuycount() == null : this.getGoodsBuycount().equals(other.getGoodsBuycount()))
            && (this.getGoodsPrice() == null ? other.getGoodsPrice() == null : this.getGoodsPrice().equals(other.getGoodsPrice()))
            && (this.getGoodsRemainnum() == null ? other.getGoodsRemainnum() == null : this.getGoodsRemainnum().equals(other.getGoodsRemainnum()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getGoodsId() == null) ? 0 : getGoodsId().hashCode());
        result = prime * result + ((getGoodsName() == null) ? 0 : getGoodsName().hashCode());
        result = prime * result + ((getGoodsType() == null) ? 0 : getGoodsType().hashCode());
        result = prime * result + ((getGoodsBuycount() == null) ? 0 : getGoodsBuycount().hashCode());
        result = prime * result + ((getGoodsPrice() == null) ? 0 : getGoodsPrice().hashCode());
        result = prime * result + ((getGoodsRemainnum() == null) ? 0 : getGoodsRemainnum().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", goodsId=").append(goodsId);
        sb.append(", goodsName=").append(goodsName);
        sb.append(", goodsType=").append(goodsType);
        sb.append(", goodsBuycount=").append(goodsBuycount);
        sb.append(", goodsPrice=").append(goodsPrice);
        sb.append(", goodsRemainnum=").append(goodsRemainnum);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}