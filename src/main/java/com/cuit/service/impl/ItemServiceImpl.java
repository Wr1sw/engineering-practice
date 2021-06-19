package com.cuit.service.impl;

import com.cuit.base.BaseDao;
import com.cuit.base.BaseServiceImpl;
import com.cuit.dao.ItemMapper;
import com.cuit.pojo.Item;
import com.cuit.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl extends BaseServiceImpl<Item> implements ItemService {

    @Autowired
    private ItemMapper itemMapper;
    @Override
    public BaseDao<Item> getBaseDao() {
        return itemMapper;
    }
}
