package com.ge.boot.base;

import com.ge.boot.entity.T2;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author dengzhipeng
 * @date 2018/07/18
 */
public interface BaseCrudMapper<T> {
    int insertSelective(T var);

    int insert(T var);

    List<T> list(@Param("params") T var);
}
