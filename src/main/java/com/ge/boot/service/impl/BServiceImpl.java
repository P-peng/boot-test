package com.ge.boot.service.impl;

import com.ge.boot.service.AIService;
import com.ge.boot.service.BIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author dengzhipeng
 * @date 2019/06/15
 */
@Service
public class BServiceImpl implements BIService {
    @Autowired
    BIService biService;
    public void print() {
        System.out.println("this is BServiceImpl print function");
    }
}
