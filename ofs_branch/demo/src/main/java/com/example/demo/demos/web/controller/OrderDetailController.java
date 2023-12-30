package com.example.demo.demos.web.controller;

import com.example.demo.demos.entity.OrderDetail;
import com.example.demo.demos.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author chtholly
 * @since 2023-12-30
 */
@RestController
@RequestMapping("/orderDetail")
public class OrderDetailController {

    @Autowired
    OrderDetailService orderDetailService;

    @PostMapping("/insert")
    public Map insert(){
       OrderDetail orderDetail=new OrderDetail();
        orderDetail.setCreateTime(new Date());
        orderDetail.setOrderOrderId(1);
        orderDetail.setOrderDetailId(1);
        boolean save = orderDetailService.save(orderDetail);
        Map map=new HashMap();
        if (save){
            map.put("code",200);
            map.put("message","success");
        }else {
            map.put("code",500);
            map.put("message","error");
        }

        return map;
    }

}

