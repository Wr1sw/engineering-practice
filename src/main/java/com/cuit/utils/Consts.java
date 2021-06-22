package com.cuit.utils;

import java.util.HashMap;
import java.util.Map;

public class Consts {
    /**
     * 二级分类常量表
     */
    public static final Map<Integer, String> CATEGORY= new HashMap<Integer, String>(){
        {
            put(1,"手机壳");
            put(9,"手机");
            put(16,"电脑");
            put(27,"鼠标");
            put(36,"键盘");
            put(45,"耳机");
            put(55,"平板");
        }
    };
    /**用户实体的名称*/
    public static final String MANAGE = "manage";

    /**
     * 前端用户登录user
     */
    public static final String USERNAME = "userName";

    /**
     * 前端用户登录id
     */

    public static final String USERID = "userId";

    /**
     * 错误码
     */
    public static final String RES = "res";
}
