package com.cuit.pojo;

import java.io.Serializable;

/**
 * order
 * @author 
 */
public class Order implements Serializable {
    private Integer orderId;

    private String oderReciever;

    private String orderAddress;

    private Integer orderPhone;

    private String orderMessage;

    private String orderBuyer;

    private Double orderTotalprice;

    private Integer shopcarId;

    private Integer goodsId;

    private static final long serialVersionUID = 1L;

    public Order(Integer orderId, String oderReciever, String orderAddress, Integer orderPhone, String orderMessage, String orderBuyer, Double orderTotalprice, Integer shopcarId, Integer goodsId) {
        this.orderId = orderId;
        this.oderReciever = oderReciever;
        this.orderAddress = orderAddress;
        this.orderPhone = orderPhone;
        this.orderMessage = orderMessage;
        this.orderBuyer = orderBuyer;
        this.orderTotalprice = orderTotalprice;
        this.shopcarId = shopcarId;
        this.goodsId = goodsId;
    }

    public Order() {
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOderReciever() {
        return oderReciever;
    }

    public void setOderReciever(String oderReciever) {
        this.oderReciever = oderReciever;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public Integer getOrderPhone() {
        return orderPhone;
    }

    public void setOrderPhone(Integer orderPhone) {
        this.orderPhone = orderPhone;
    }

    public String getOrderMessage() {
        return orderMessage;
    }

    public void setOrderMessage(String orderMessage) {
        this.orderMessage = orderMessage;
    }

    public String getOrderBuyer() {
        return orderBuyer;
    }

    public void setOrderBuyer(String orderBuyer) {
        this.orderBuyer = orderBuyer;
    }

    public Double getOrderTotalprice() {
        return orderTotalprice;
    }

    public void setOrderTotalprice(Double orderTotalprice) {
        this.orderTotalprice = orderTotalprice;
    }

    public Integer getShopcarId() {
        return shopcarId;
    }

    public void setShopcarId(Integer shopcarId) {
        this.shopcarId = shopcarId;
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
        Order other = (Order) that;
        return (this.getOrderId() == null ? other.getOrderId() == null : this.getOrderId().equals(other.getOrderId()))
            && (this.getOderReciever() == null ? other.getOderReciever() == null : this.getOderReciever().equals(other.getOderReciever()))
            && (this.getOrderAddress() == null ? other.getOrderAddress() == null : this.getOrderAddress().equals(other.getOrderAddress()))
            && (this.getOrderPhone() == null ? other.getOrderPhone() == null : this.getOrderPhone().equals(other.getOrderPhone()))
            && (this.getOrderMessage() == null ? other.getOrderMessage() == null : this.getOrderMessage().equals(other.getOrderMessage()))
            && (this.getOrderBuyer() == null ? other.getOrderBuyer() == null : this.getOrderBuyer().equals(other.getOrderBuyer()))
            && (this.getOrderTotalprice() == null ? other.getOrderTotalprice() == null : this.getOrderTotalprice().equals(other.getOrderTotalprice()))
            && (this.getShopcarId() == null ? other.getShopcarId() == null : this.getShopcarId().equals(other.getShopcarId()))
            && (this.getGoodsId() == null ? other.getGoodsId() == null : this.getGoodsId().equals(other.getGoodsId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getOrderId() == null) ? 0 : getOrderId().hashCode());
        result = prime * result + ((getOderReciever() == null) ? 0 : getOderReciever().hashCode());
        result = prime * result + ((getOrderAddress() == null) ? 0 : getOrderAddress().hashCode());
        result = prime * result + ((getOrderPhone() == null) ? 0 : getOrderPhone().hashCode());
        result = prime * result + ((getOrderMessage() == null) ? 0 : getOrderMessage().hashCode());
        result = prime * result + ((getOrderBuyer() == null) ? 0 : getOrderBuyer().hashCode());
        result = prime * result + ((getOrderTotalprice() == null) ? 0 : getOrderTotalprice().hashCode());
        result = prime * result + ((getShopcarId() == null) ? 0 : getShopcarId().hashCode());
        result = prime * result + ((getGoodsId() == null) ? 0 : getGoodsId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", orderId=").append(orderId);
        sb.append(", oderReciever=").append(oderReciever);
        sb.append(", orderAddress=").append(orderAddress);
        sb.append(", orderPhone=").append(orderPhone);
        sb.append(", orderMessage=").append(orderMessage);
        sb.append(", orderBuyer=").append(orderBuyer);
        sb.append(", orderTotalprice=").append(orderTotalprice);
        sb.append(", shopcarId=").append(shopcarId);
        sb.append(", goodsId=").append(goodsId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}