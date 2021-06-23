package com.cuit.service.impl;

import com.cuit.base.BaseDao;
import com.cuit.base.BaseServiceImpl;
import com.cuit.dao.OrderDetailMapper;
import com.cuit.pojo.OrderDetail;
import com.cuit.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail> implements OrderDetailService {
    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Override
    public BaseDao<OrderDetail> getBaseDao() {
        return orderDetailMapper;
    }
}
