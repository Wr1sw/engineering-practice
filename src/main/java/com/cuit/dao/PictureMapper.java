package com.cuit.dao;

import com.cuit.pojo.PictureKey;
import org.springframework.stereotype.Repository;

@Repository
public interface PictureMapper {
    int deleteByPrimaryKey(PictureKey key);

    int insert(PictureKey record);

    int insertSelective(PictureKey record);
}