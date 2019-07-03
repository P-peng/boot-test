package com.ge.boot.controller;

import com.ge.boot.entity.T;
import com.ge.boot.entity.T2;
import com.ge.boot.mapper.BaseTMapper;
import com.ge.boot.mapper.TMapper;
import com.ge.boot.mapper.TestT2Mapper;
import com.ge.boot.service.TIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @Resource
    private TestT2Mapper testT2Mapper;

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

    @RequestMapping("t6")
    @ResponseBody
    public Object t6(){
        T2 t2 = new T2();
        t2.setAge("18");
        t2.setName("dengzhipeng");
        System.out.println(testT2Mapper.insertSelective(t2));
        System.out.println(t2);
        return "ok";
    }

    @RequestMapping("t7")
    @ResponseBody
    public Object t7(){
        Map<String, Object> params = new HashMap<String, Object>(4);
        params.put("name","dengzhipeng");
        List<T2> list = testT2Mapper.list(params);
        for (T2 t2 : list) {
            System.out.println(t2);
        }
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
