package com.cuit.pojo;

import java.io.Serializable;

public class Goods implements Serializable {
    private int goods_id;
    private String goods_name;
    private String goods_type;
    private int goods_buyCount;
    private float goods_price;
    private int goods_remainNum;

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getGoods_type() {
        return goods_type;
    }

    public void setGoods_type(String goods_type) {
        this.goods_type = goods_type;
    }

    public int getGoods_buyCount() {
        return goods_buyCount;
    }

    public void setGoods_buyCount(int goods_buyCount) {
        this.goods_buyCount = goods_buyCount;
    }

    public float getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(float goods_price) {
        this.goods_price = goods_price;
    }

    public int getGoods_remainNum() {
        return goods_remainNum;
    }

    public void setGoods_remainNum(int goods_remainNum) {
        this.goods_remainNum = goods_remainNum;
    }
}
