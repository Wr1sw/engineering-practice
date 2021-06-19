package com.cuit.service.impl;

import com.cuit.base.BaseDao;
import com.cuit.base.BaseServiceImpl;
import com.cuit.dao.ManageMapper;
import com.cuit.pojo.Manage;
import com.cuit.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageServiceImpl extends BaseServiceImpl<Manage> implements ManageService {
    @Autowired
    ManageMapper manageMapper;

    @Override
    public BaseDao<Manage> getBaseDao() {
        return manageMapper;
    }
}
