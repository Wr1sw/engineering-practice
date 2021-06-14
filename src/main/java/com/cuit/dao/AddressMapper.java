package com.cuit.dao;

import com.cuit.pojo.Address;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}