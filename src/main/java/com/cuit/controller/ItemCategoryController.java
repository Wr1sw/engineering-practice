package com.cuit.controller;

import com.cuit.base.BaseController;
import com.cuit.pojo.ItemCategory;
import com.cuit.service.ItemCategoryService;
import com.cuit.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 类目c层
 */
@Controller
@RequestMapping("/itemCategory")
public class ItemCategoryController extends BaseController {

    @Autowired
    private ItemCategoryService itemCategoryService;

    /**
     * 分页查询类目列表
     */
    @RequestMapping("/findBySql")
    public String findBySql(Model model,ItemCategory itemCategory){
        String sql = "select * from item_category where isDelete = 0 and pid is null order by id";
        Pager<ItemCategory> pagers = itemCategoryService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("obj",itemCategory);
        System.out.println("pagers:"+pagers.getDatas());
        return "itemCategory/itemCategory";
    }

    /**
     * 转向到新增一级分类页面
     * */
    @RequestMapping("/add")
    public String add() {
        return "itemCategory/add";
    }
}
