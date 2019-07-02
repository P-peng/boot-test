package com.ge.boot.mapper;

import com.ge.boot.entity.T;

import java.util.List;

public interface TMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);

    List<T> listJoin(Integer id);

    List<T> listJoin2(Integer id);
}