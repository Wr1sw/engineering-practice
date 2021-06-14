package com.cuit.dao;

import com.cuit.pojo.Shopcar;
import org.springframework.stereotype.Repository;

@Repository
public interface ShopcarMapper {
    int deleteByPrimaryKey(Integer shopcarId);

    int insert(Shopcar record);

    int insertSelective(Shopcar record);

    Shopcar selectByPrimaryKey(Integer shopcarId);

    int updateByPrimaryKeySelective(Shopcar record);

    int updateByPrimaryKey(Shopcar record);
}