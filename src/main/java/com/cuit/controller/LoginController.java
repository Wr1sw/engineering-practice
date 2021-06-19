package com.cuit.controller;

import com.cuit.pojo.*;
import com.cuit.service.ItemCategoryService;
import com.cuit.service.ItemService;
import com.cuit.service.ManageService;
import com.cuit.service.UserService;
import com.cuit.utils.Consts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * 登录相关的控制器
 * by wr1sw
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private ManageService manageService;

    @Autowired
    private ItemCategoryService itemCategoryService;

    @Autowired
    private UserService userService;

    @Autowired
    private ItemService itemService;

    /**
     * 管理员登录前
     * by wr1sw
     */
    @RequestMapping("/loin")
    public String login() {
        return "/login/mLogin";
    }
    /**
     * 登录验证
     * by wr1sw
     * */
    @RequestMapping("/toLogin")
    public String toLogin(Manage manage, HttpServletRequest request){
        Manage byEntity = manageService.getByEntity(manage);
        if (byEntity == null){
            return "redirect:/login/mtuichu";
        }
        request.getSession().setAttribute(Consts.MANAGE, byEntity);
        return "/login/mIndex";
    }

    /**
     * 管理员退出
     * by wr1sw
     */
    @RequestMapping("mtuichu")
    public String mtuichu(HttpServletRequest request) {
        request.getSession().setAttribute(Consts.MANAGE,null);
        return "/login/mLogin";
    }
    /**
     * 前端首页
     * by wr1sw
     */
    @RequestMapping("/uIndex")
    public String uIndex(Model model, Item item, HttpServletRequest request) {
        String sql1 = "select * from item_category where isDelete=0 and pid is null order by name";
        List<ItemCategory> fatherList = itemCategoryService.listBySqlReturnEntity(sql1);
        List<CategoryDto> list = new ArrayList<>();
        if( !CollectionUtils.isEmpty(fatherList) ){
            for (ItemCategory ic :fatherList) {
                CategoryDto dto = new CategoryDto();
                dto.setFather(ic);
                String sql2 = "select * from item_category where isDelete=0 and pid="+ic.getId();
                List<ItemCategory> childrens = itemCategoryService.listBySqlReturnEntity(sql2);
                dto.setChildrens(childrens);
                list.add(dto);
                model.addAttribute("lbs",list);
            }
        }
        /*取7个限时秒杀商品*/
        List<Item> msItems = itemService.listBySqlReturnEntity("select * from item where isDelete=0 and zk is not null order by zk desc limit 0,7");
        model.addAttribute("ms",msItems);
        System.out.println(msItems);
        /*热销商品10个*/
        List<Item> rxItems = itemService.listBySqlReturnEntity("select * from item where isDelete=0 order by gmNum desc limit 0,10");
        model.addAttribute("rx",rxItems);
        System.out.println(rxItems);
        return "login/uIndex";
    }
    /**
     * 普通用户注册
     * by wr1sw
     */
    @RequestMapping("/res")
    public String res() {
        return "login/res";
    }

    /**
     * 普通用户注册执行
     * by wr1sw
     */
    @RequestMapping("/toRes")
    public String toRes(User u) {
        System.out.println("+++++++++++++++++++++++++");
        System.out.println(u);
        System.out.println("+++++++++++++++++++++++++");
        userService.insert(u);
        return "uLogin";
    }
    /**
     * 普通用户登录入口
     * by wr1sw
     */
    @RequestMapping("/uLogin")
    public String uLogin(){

        return "login/uLogin";
    }

    /**
     * 执行普通用户登录*
     */
    @RequestMapping("/uLoginTo")
    public String uLoginTo(User u, HttpServletRequest request) {
        User byEntity = userService.getByEntity(u);
        if(byEntity == null) {
            return "redirect:/login/res";
        }else{
            request.getSession().setAttribute("role", 2);
            request.getSession().setAttribute("userName", byEntity.getUserName());
            request.getSession().setAttribute("userId", byEntity.getId());
            return "redirect:/login/uIndex";
        }
    }

    /**
     * 普通用户退出
     * by wr1sw
     */
    @RequestMapping("/uTuiChu")
    public String uTuiChu(HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.invalidate();//清空session
        return "redirect:/login/uIndex";
    }
}
