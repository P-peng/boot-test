package com.ge.boot.service.impl;

import com.ge.boot.mapper.TMapper;
import com.ge.boot.service.BIService;
import com.ge.boot.service.TIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author dengzhipeng
 * @date 2019/06/15
 */
@Service
public class TServiceImpl implements TIService {

    @Autowired
    BIService biService;
    public void print() {
    }
}
