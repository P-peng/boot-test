package com.ge.boot.mapper;

import com.ge.boot.entity.T2;

public interface T2Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(T2 record);

    int insertSelective(T2 record);

    T2 selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(T2 record);

    int updateByPrimaryKey(T2 record);
}