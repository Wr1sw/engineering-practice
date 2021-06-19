package com.cuit.controller;

import com.cuit.base.BaseController;
import com.cuit.pojo.Item;
import com.cuit.service.ItemService;
import com.cuit.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Item")
public class ItemController extends BaseController {

    @Autowired
    private ItemService itemService;
    /**
     * 按照关键字或者二级分类查询
     */
    @RequestMapping("/shoplist")
    public String shoplist(Item item, String condition, Model model) {
        String sql = "select * from item where isDelete=0";
        if(!isEmpty(item.getCategoryIdTwo())) sql+="  and category_id_two=" + item.getCategoryIdTwo();
        if(!isEmpty(condition)) {
            sql+= " and name like '%" + condition + "%'";
            model.addAttribute("condition",condition);
        }
        Pager<Item> pagers = itemService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("object",item);//传回item
        return "item/search";
    }
}
