package com.cuit.dao;

import com.cuit.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    List<User> selectAllUsers();
    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}