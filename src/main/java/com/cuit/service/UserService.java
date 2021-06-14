package com.cuit.service;

import com.cuit.pojo.User;

import java.util.List;

public interface UserService {

    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    List<User> selectAllUsers();

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

}
