package com.ge.boot.controller;

import com.ge.boot.entity.T;
import com.ge.boot.mapper.BaseTMapper;
import com.ge.boot.mapper.TMapper;
import com.ge.boot.service.TIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author dengzhipeng
 * @date 2019/06/15
 */
@Controller
@RequestMapping("t")
public class TController {
    @Resource
    private TMapper tMapper;
    @Resource
    private BaseTMapper baseTMapper;

    @Autowired
    private TIService tiService;

    @RequestMapping("t1")
    @ResponseBody
    public Object t1(){
        tiService.print();
        return "ok";
    }

    @RequestMapping("t2")
    @ResponseBody
    public Object t2(){
        System.out.println(tMapper.selectByPrimaryKey(2));
        return "ok";
    }

    @RequestMapping("t3")
    @ResponseBody
    public Object t3(){
        System.out.println(baseTMapper.selectByPrimaryKey(2));
        return "ok";
    }

    @RequestMapping("t4")
    @ResponseBody
    public Object t4(){
        System.out.println(tMapper.listJoin(2));
        return "ok";
    }

    @RequestMapping("t5")
    @ResponseBody
    public Object t5(){
        System.out.println(tMapper.listJoin2(2));
        return "ok";
    }

    @RequestMapping("insertSelective")
    @ResponseBody
    public Object insertSelective(){
        T t = new T();
        t.setName("686");
        System.out.println(tMapper.insertSelective(t));
        return "ok";
    }
}
