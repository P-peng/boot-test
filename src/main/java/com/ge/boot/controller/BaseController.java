package com.ge.boot.controller;

import com.ge.boot.service.AIService;
import com.ge.boot.service.BIService;
import com.ge.boot.service.impl.CServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author dengzhipeng
 * @date 2019/06/15
 */
@Controller
@RequestMapping("base")
public class BaseController {
    @Autowired
    AIService aiService;
    @Autowired
    BIService biService;

    @Autowired
    CServiceImpl cService;

    @RequestMapping("t1")
    @ResponseBody
    public Object t1(){
        aiService.print();
        biService.print();
        return "ok";
    }

    @RequestMapping("t2")
    @ResponseBody
    public Object t2(){
        cService.print();
        return "ok";
    }
}
