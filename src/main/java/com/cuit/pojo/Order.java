package com.cuit.pojo;

import java.io.Serializable;

public class Order implements Serializable {
    private int order_id;
    private String order_reciever;
    private String order_address;
    private int order_phone;
    private String order_message;
    private String order_buyer;
    private float order_totalPrice;
    private int shopcar_id;
    private int goods_id;

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getOrder_reciever() {
        return order_reciever;
    }

    public void setOrder_reciever(String order_reciever) {
        this.order_reciever = order_reciever;
    }

    public String getOrder_address() {
        return order_address;
    }

    public void setOrder_address(String order_address) {
        this.order_address = order_address;
    }

    public int getOrder_phone() {
        return order_phone;
    }

    public void setOrder_phone(int order_phone) {
        this.order_phone = order_phone;
    }

    public String getOrder_message() {
        return order_message;
    }

    public void setOrder_message(String order_message) {
        this.order_message = order_message;
    }

    public String getOrder_buyer() {
        return order_buyer;
    }

    public void setOrder_buyer(String order_buyer) {
        this.order_buyer = order_buyer;
    }

    public float getOrder_totalPrice() {
        return order_totalPrice;
    }

    public void setOrder_totalPrice(float order_totalPrice) {
        this.order_totalPrice = order_totalPrice;
    }

    public int getShopcar_id() {
        return shopcar_id;
    }

    public void setShopcar_id(int shopcar_id) {
        this.shopcar_id = shopcar_id;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }
}
