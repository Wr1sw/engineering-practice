package com.cuit.dao;

import com.cuit.pojo.Hobby;
import org.springframework.stereotype.Repository;

@Repository
public interface HobbyMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(Hobby record);

    int insertSelective(Hobby record);

    Hobby selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(Hobby record);

    int updateByPrimaryKey(Hobby record);
}