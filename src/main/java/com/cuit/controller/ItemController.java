package com.cuit.controller;

import com.cuit.base.BaseController;
import com.cuit.pojo.Item;
import com.cuit.pojo.ItemCategory;
import com.cuit.service.ItemCategoryService;
import com.cuit.service.ItemService;
import com.cuit.utils.Pager;
import com.cuit.utils.StringUtils;
import com.cuit.utils.SystemContext;
import com.cuit.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/Item")
public class ItemController extends BaseController {

    @Autowired
    private ItemService itemService;

    @Autowired
    private ItemCategoryService itemCategoryService;

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
     * 添加商品入口
     * by wr1sw
     */
    @RequestMapping("/add")
    public String add(Model model){
        String sql = "select * from item_category where isDelete = 0 and pid is not null order by id";
        List<ItemCategory> listBySqlReturnEntity = itemCategoryService.listBySqlReturnEntity(sql);
        model.addAttribute("types",listBySqlReturnEntity);
        return "item/add";
    }

    /**
     * 执行添加商品
     * by wr1sw
     */
    @RequestMapping("/exAdd")
    public String exAdd(Item item, @RequestParam("files") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        itemCommon(item, files, request);
        item.setGmNum(0);
        item.setIsDelete(0);
        item.setScNum(0);
        itemService.insert(item);
        return "redirect:/Item/findBySql";
    }

    /**
     * 修改商品入口
     */
    @RequestMapping("/update")
    public String update(Integer id,Model model){
        Item obj = itemService.load(id);
        String sql = "select * from item_category where isDelete = 0 and pid is not null order by id";
        List<ItemCategory> listBySqlReturnEntity = itemCategoryService.listBySqlReturnEntity(sql);
        model.addAttribute("types",listBySqlReturnEntity);
        model.addAttribute("obj",obj);
        return "item/update";
    }

    /**
     * 执行修改商品
     */
    @RequestMapping("/exUpdate")
    public String exUpdate(Item item, @RequestParam("file")CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        itemCommon(item, files, request);
        itemService.updateById(item);
        return "redirect:/Item/findBySql";
    }

    /**
     * 新增和更新的公共方法
     */
    private void itemCommon(Item item, @RequestParam("files") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        if(files.length>0) {
            for (int s = 0; s < files.length; s++) {
                String n = UUIDUtils.create();
                String path = SystemContext.getRealPath() + "\\static\\images\\GoodsPicture\\" + n + files[s].getOriginalFilename();
                File newFile = new File(path);
                //通过CommonsMultipartFile的方法直接写文件
                files[s].transferTo(newFile);
                if (s == 0) {
                    item.setUrl1(request.getContextPath()+"\\static\\images\\GoodsPicture\\" + n + files[s].getOriginalFilename());
                }
                if (s == 1) {
                    item.setUrl2(request.getContextPath()+"\\static\\images\\GoodsPicture\\" + n + files[s].getOriginalFilename());
                }
                if (s == 2) {
                    item.setUrl3(request.getContextPath()+"\\static\\images\\GoodsPicture\\" + n + files[s].getOriginalFilename());
                }
                if (s == 3) {
                    item.setUrl4(request.getContextPath()+"\\static\\images\\GoodsPicture\\" + n + files[s].getOriginalFilename());
                }
                if (s == 4) {
                    item.setUrl5(request.getContextPath()+"\\static\\images\\GoodsPicture\\" + n + files[s].getOriginalFilename());
                }
            }
        }
        ItemCategory byId = itemCategoryService.getById(item.getCategoryIdTwo());
        item.setCategoryIdOne(byId.getPid());
    }

    /**
     * 商品下架
     * by wr1sw
     */
    @RequestMapping("/delete")
    public String update(Integer id){
        Item obj = itemService.load(id);
        obj.setIsDelete(1);
        itemService.updateById(obj);
        return "redirect:/Item/findBySql";
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
        int size = 0;
        size = (int) ((int)pagers.getDatas().size()/3);
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
