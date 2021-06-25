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
     */
    @RequestMapping("/shoplist")
    public String shoplist(Item item, String condition, Model model) {
        String sql = "select * from item where isDelete=0";
        String sqlForAds = "select * from item where isDelete=0 and zk is not null order by gmNum desc limit 6";
        if(!isEmpty(item.getCategoryIdTwo())) sql+="  and category_id_two=" + item.getCategoryIdTwo();
        if(!isEmpty(condition)) {
            sql+= " and ms like '%" + condition + "%'";
            model.addAttribute("condition",condition);
        }
        Pager<Item> pagers = itemService.findBySqlRerturnEntity(sql);
        //        Pager<Item> pagers = itemService.findBySqlRerturnEntity(sql);
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
