package com.cuit.service.impl;

import com.cuit.base.BaseDao;
import com.cuit.base.BaseServiceImpl;
import com.cuit.dao.UserMapper;
import com.cuit.pojo.User;
import com.cuit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public BaseDao<User> getBaseDao() {
        return userMapper;
    }
}
