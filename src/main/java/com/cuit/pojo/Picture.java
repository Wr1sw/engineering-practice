package com.cuit.pojo;

import java.io.Serializable;

public class Picture implements Serializable {
    private int goods_id;
    private String picture_url;

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getPicture_url() {
        return picture_url;
    }

    public void setPicture_url(String picture_url) {
        this.picture_url = picture_url;
    }
}
