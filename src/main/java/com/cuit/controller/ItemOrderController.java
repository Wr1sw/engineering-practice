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
    @Autowired
    private CarService carService;
    @Autowired
    private UserService userService;
    @Autowired
    private ItemService itemService;

    /**
     * Create by wys
     * modified by Miracle
     * function: 查看我的订单记录
     * 我的订单
     */
    @RequestMapping("/my")
    public String my(Model model, HttpServletRequest request){
        int Id = (Integer) request.getSession().getAttribute(Consts.USERID);
        User user = userService.getById(Id);
        String sql = "select * from item_order where user_id = "+Id ;
        ArrayList<ItemOrder> itemOrders = (ArrayList<ItemOrder>) itemOrderService.listBySqlReturnEntity(sql);
        for(ItemOrder order: itemOrders){
            order.setTotal(itemService.getById(order.getItemId()).getName());
        }
        model.addAttribute("user",user);
        model.addAttribute("orders",itemOrders);
        return "itemOrder/my";
    }

    /**
     * Create by Miracle
     * function: return 购物车列表，用户实体
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/orderDetail")
    public String orderDetail(Model model,HttpServletRequest request){
        String s = request.getParameter("ids");
        String ids = s.replaceAll("c","");
        String []str = ids.split(",");
        ArrayList<Car> cars = new ArrayList<>();
        for(String i : str){
            cars.add(carService.load(Integer.parseInt(i)));
        }
        for(Car car: cars){
            car.setItem(itemService.load(car.getItemId()));
        }
        User user = userService.getById(Integer.parseInt(request.getSession().getAttribute(Consts.USERID).toString()));
        model.addAttribute("cars",cars);
        model.addAttribute("user",user);

        return "itemOrder/orderDetail";
    }

    /**
     * create by miracle
     * function: 跳转到支付页面
     * @return
     */
    @RequestMapping("/account")
    public String Account(){
        return "pay/pay";
    }

    @RequestMapping("/addBuyRecord")
    @ResponseBody
    public String AddBuyRecord(HttpServletRequest request){
        JSONObject json = new JSONObject();
        String temp = request.getParameter("data");
        String []data = temp.split(";");
        ItemOrder order ;
        for(String s : data){
            order = new ItemOrder();
            System.out.println(s);
            String []lists = s.split(",");
            order.setCode(lists[0]);
            order.setItemId(Integer.parseInt(lists[1]));
            order.setTotal(lists[2]);
            order.setUserId(Integer.parseInt(lists[3]));
            order.setAddTime(new Date());
            order.setIsDelete(0);
            order.setStatus(1);
            itemOrderService.insert(order);
        }
        json.put("result",1);
        return json.toJSONString();
    }

    /**
     * create by Miracle
     * function: 根据条件返回对应的支付成功页面
     * @param request
     * @return
     */
    @RequestMapping("/paySuccess")
    public String PaySuccess(HttpServletRequest request){
        int choice = Integer.parseInt(request.getParameter("choice"));
        if(choice == 1)
            return"pay/WeChatSuccess";
        else
            return "pay/ALiPay";
    }

}














