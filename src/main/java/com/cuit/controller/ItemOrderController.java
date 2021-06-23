package com.cuit.controller;

import com.alibaba.fastjson.JSONObject;
import com.cuit.base.BaseController;
import com.cuit.pojo.*;
import com.cuit.service.*;
import com.cuit.utils.Consts;
import com.cuit.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 订单管理
 */
@Controller
@RequestMapping("/itemOrder")
public class ItemOrderController extends BaseController {

    @Autowired
    private ItemOrderService itemOrderService;

    /**
     * 我的订单
     */
    @RequestMapping("/my")
    public String my(){
        return "itemOrder/my";
    }

}














