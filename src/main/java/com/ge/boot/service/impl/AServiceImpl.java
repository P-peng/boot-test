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
public class AServiceImpl implements AIService {
    @Autowired
    BIService biService;
    public void print() {
        biService.print();
        System.out.println("this is AServiceImpl print function");
    }
}
