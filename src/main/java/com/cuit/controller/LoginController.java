package com.cuit.controller;

import com.cuit.pojo.*;
import com.cuit.service.ItemCategoryService;
import com.cuit.service.ItemService;
import com.cuit.service.ManageService;
import com.cuit.service.UserService;
import com.cuit.utils.Consts;
import com.cuit.utils.StringUtils;
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
     * Recreate by miracle: to finish the 热销商品10个
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
        String s = "select * from item where isDelete=0 and zk is not null order by zk desc limit 0,7";
        List<Item> msItems = itemService.listBySqlReturnEntity(s);
        model.addAttribute("ms",msItems);
        /*热销商品10个*/
        /*热销第一名*/
        String s1 = "select * from item where isDelete=0 and category_id_one=22 order by gmNum desc limit 1";
        Item rxItem1 = itemService.getBySqlReturnEntity(s1);
        /*热销第二名*/
        String s2 = "select * from item where isDelete=0 and category_id_one=22 order by gmNum desc limit 1,1";
        Item rxItem2 = itemService.getBySqlReturnEntity(s2);
        /*热销第3-6名*/
        String s3 = "select * from item where isDelete=0 and category_id_one=22 order by gmNum desc limit 2,4";
        List<Item> rxItemsLeft = itemService.listBySqlReturnEntity(s3);
        /*热销第7-10名*/
        String s4 = "select * from item where isDelete=0 and category_id_one=22 order by gmNum desc limit 6,4";
        List<Item> rxItemsRight = itemService.listBySqlReturnEntity(s4);

        model.addAttribute("rxItemsLeft",rxItemsLeft);
        model.addAttribute("rxItemsRight",rxItemsRight);
        model.addAttribute("rxItem1",rxItem1);
        model.addAttribute("rxItem2",rxItem2);
        System.out.println(rxItemsLeft);
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
        userService.insert(u);
        return "login/uLogin";
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
            request.getSession().setAttribute(Consts.USERNAME, byEntity.getUserName());
            request.getSession().setAttribute(Consts.USERID, byEntity.getId());
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

    /**
     * 修改密码页面
     */
    @RequestMapping("/pass")
    public String pass() {
        return "login/pass";
    }

    /**
     * create by Miracle
     * function: 通过手机验证登陆
     * @param request
     * @return
     */
    @RequestMapping("/telPhone")
    public String LoginByPhone(HttpServletRequest request){
        String phone = request.getParameter("Phone");
        String sql = "select * from  user where phone="+phone;
        User user = userService.getBySqlReturnEntity(sql);
        request.getSession().setAttribute("role", 2);
        request.getSession().setAttribute(Consts.USERNAME, user.getUserName());
        request.getSession().setAttribute(Consts.USERID, user.getId());
        return "redirect:/login/uIndex";
    }

    @RequestMapping("/pLogin")
    public String pLogin(){
        return "login/pLogin";
    }

    /**
     * create by Miracle
     * function: 将用户实体传向view.jsp
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/view")
    public String View(Model model, HttpServletRequest request){
        User user = userService.getById((Integer)request.getSession().getAttribute(Consts.USERID));
        model.addAttribute("obj",user);
        return "user/view";
    }
}
