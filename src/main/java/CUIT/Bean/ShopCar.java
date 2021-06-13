package CUIT.Bean;

import java.io.Serializable;
import java.util.Date;

public class ShopCar implements Serializable {
    private int shopcar_id;
    private Date goods_addtime;
    private int goods_num;
    private String shopcar_picture;
    private int user_id;
    private int goods_id;

    public int getShopcar_id() {
        return shopcar_id;
    }

    public void setShopcar_id(int shopcar_id) {
        this.shopcar_id = shopcar_id;
    }

    public Date getGoods_addtime() {
        return goods_addtime;
    }

    public void setGoods_addtime(Date goods_addtime) {
        this.goods_addtime = goods_addtime;
    }

    public int getGoods_num() {
        return goods_num;
    }

    public void setGoods_num(int goods_num) {
        this.goods_num = goods_num;
    }

    public String getShopcar_picture() {
        return shopcar_picture;
    }

    public void setShopcar_picture(String shopcar_picture) {
        this.shopcar_picture = shopcar_picture;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }
}
