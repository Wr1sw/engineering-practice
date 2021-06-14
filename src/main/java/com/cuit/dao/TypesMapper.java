package com.cuit.dao;

import com.cuit.pojo.Types;
import org.springframework.stereotype.Repository;

@Repository
public interface TypesMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(Types record);

    int insertSelective(Types record);

    Types selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(Types record);

    int updateByPrimaryKey(Types record);
}