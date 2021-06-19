package com.cuit.service.impl;

import com.cuit.base.BaseDao;
import com.cuit.base.BaseServiceImpl;
import com.cuit.dao.ItemCategoryMapper;
import com.cuit.pojo.ItemCategory;
import com.cuit.service.ItemCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemCategoryServiceImpl extends BaseServiceImpl<ItemCategory> implements ItemCategoryService {
    @Autowired
    ItemCategoryMapper itemCategoryMapper;

    @Override
    public BaseDao<ItemCategory> getBaseDao() {
        return itemCategoryMapper;
    }
}
