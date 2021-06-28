package com.cuit.controller;

import com.cuit.base.BaseController;
import com.cuit.pojo.Item;
import com.cuit.service.ItemService;
import com.cuit.utils.Pager;
import com.cuit.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/Item")
public class ItemController extends BaseController {

    @Autowired
    private ItemService itemService;
    @Autowired
    private StringUtils stringUtils;

    /**
     * 分页查询商品列表
     * by wr1sw
     */
    @RequestMapping("/findBySql")
    public String findBySql(Model model, Item item){
        String sql = "select * from item where isDelete = 0 ";
        if(!isEmpty(item.getName())){
            sql += " and name like '%" + item.getName() + "%' ";
        }
        sql += " order by id desc";
        Pager<Item> pagers = itemService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("obj",item);
        return "item/item";
    }
    /**
     * Create by Miracle
     * function 通过配置文件注入StringUtils
     * @param stringUtils
     */
    public void setStringUtils(StringUtils stringUtils) {
        this.stringUtils = stringUtils;
    }

    /**
     * Modified by Miracle
     * 按照关键字或者二级分类查询
     * Create by wr1sw
     */
    @RequestMapping("/shoplist")
    public String shoplist(Item item, String condition, Model model) {
        String sql = "select * from item where isDelete=0";
        String sqlForAds = "select * from item where isDelete=0 and zk is not null order by gmNum desc limit ";
        if(!isEmpty(item.getCategoryIdTwo())) sql+="  and category_id_two=" + item.getCategoryIdTwo();
        if(!isEmpty(condition)) {
            sql+= " and ms like '%" + condition + "%'";
            model.addAttribute("condition",condition);
        }
        Pager<Item> pagers = itemService.findBySqlRerturnEntity(sql);
//        int pagersSize = pagers.getDatas().size();
        int size = 0;
        size = (int) ((int)pagers.getDatas().size()/2.35);
//        if(pagersSize>=13){
//            size = 6;
//        }else{
//            if(pagersSize % 4 == 0){
//                size = pagersSize / 4 + 1;
//            }else{
//                size = (int)(pagersSize / 4) + 2;
//            }
//        }
        sqlForAds += size;
        List<Item> ads = itemService.listBySqlReturnEntity(sqlForAds);
        model.addAttribute("ads",ads);
        model.addAttribute("pagers",pagers);
        model.addAttribute("object",item);//传回item
        return "item/search";
    }
    /**
        Created by miracle
        To Get an ItemDetail object
        @param ItemID
     */
    @RequestMapping("/view")
    public String ItemDetail(@RequestParam(value = "id") int ItemID, Model model){
        String sql = "select * from item where isDelete =0 and id="+ItemID;
        Item item = itemService.getBySqlReturnEntity(sql);
        System.out.println("Item: "+item.toString());
        model.addAttribute("item",item);

        return "item/item_detail";
    }
}
