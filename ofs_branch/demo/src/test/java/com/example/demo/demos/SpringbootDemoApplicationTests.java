package com.example.demo.demos;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.demos.entity.OrderDetail;
import com.example.demo.demos.entity.OrderInfo;
import com.example.demo.demos.mapper.OrderDetailMapper;
import com.example.demo.demos.mapper.OrderInfoMapper;
import com.example.demo.demos.service.OrderDetailService;
import com.example.demo.demos.service.OrderInfoService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@SpringBootTest
@Slf4j
class SpringbootDemoApplicationTests {

    private final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    private SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private OrderInfoService orderInfoService;
    @Autowired
    private OrderInfoMapper orderInfoMapper;
    @Autowired
    private OrderDetailMapper orderDetailMapper;

    /**
     * 插入根据字段自动分表
     */
    @Test
    void saveTest() {
        //定义三个时间数据
        LocalDateTime time1 = LocalDateTime.parse("2024-01-01 00:00:00", DATE_TIME_FORMATTER);
        LocalDateTime time2 = LocalDateTime.parse("2023-12-01 00:00:00", DATE_TIME_FORMATTER);
        LocalDateTime time3 = LocalDateTime.parse("2023-12-01 00:00:00", DATE_TIME_FORMATTER);
        //第一条订单
        OrderInfo info=new OrderInfo(time1,"订单C");

        orderInfoService.save(info);
        //第一条订单的子订单
        List<OrderDetail> users = new ArrayList<>(3);
        users.add(new OrderDetail(info.getOrderInfoId(),time1));
        users.add(new OrderDetail(info.getOrderInfoId(),time2));
        users.add(new OrderDetail(info.getOrderInfoId(),time3));
        orderDetailService.saveBatch(users);
    }


    /**
     * 分页查询销售主表，统计其中所具有的销售子订单的
     */
    @Test
    void listTest() throws ParseException {
        //定义分页条数
        Date timeStart1=sf.parse("2023-01-01 00:00:00");
        Date timeEnd1=sf.parse("2024-01-31 23:59:59");
        //LocalDateTime timeEnd2 = LocalDateTime.parse("2024-01-01 00:00:00", DATE_TIME_FORMATTER);
        //LocalDateTime timeStart2 = LocalDateTime.parse("2023-12-01 00:00:00", DATE_TIME_FORMATTER);
        //具有全部条件的
        List<OrderInfo> users = orderInfoService.list(
                new QueryWrapper<OrderInfo>()
                        .between("create_time", timeStart1, timeEnd1));
        System.out.println(">>>>>>>>>> 【Result】<<<<<<<<<< ");
        users.forEach(System.out::println);
        //分页获取的
        QueryWrapper<OrderInfo> qw = new QueryWrapper<>();
        qw.between("create_time", timeStart1, timeEnd1);

        IPage<OrderInfo> page=new Page<>();
        page.setCurrent(1);//第一页
        page.setSize(2);//每页的记录数
        IPage<OrderInfo> result = orderInfoMapper.selectPage(page, qw);
        //获取分页后的记录
        List<OrderInfo> OrderInfo = result.getRecords();
        System.out.println("记录的条数"+OrderInfo.size());
        //分页的信息
        long pages = result.getPages();
        System.out.println("页数"+pages);
        System.out.println("总记录条数"+result.getTotal());
        System.out.println("当前页码"+result.getCurrent());
        System.out.println("每页的记录数"+result.getSize());

        //获取到的id数组
        List<String> collect = OrderInfo.stream().map(orderInfo -> orderInfo.getOrderInfoId()).collect(Collectors.toList());
        QueryWrapper<OrderDetail> qw1 = new QueryWrapper<>();
        qw1.in("order_order_id",collect);
        List<OrderDetail> list = orderDetailMapper.selectList(qw1);
        System.out.println(">>>>>>>>>> 【Result】<<<<<<<<<< ");
        list.forEach(System.out::println);

        log.info("子订单的总条数："+list.size());
    }


}
