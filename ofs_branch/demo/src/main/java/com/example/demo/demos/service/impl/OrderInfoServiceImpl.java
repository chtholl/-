package com.example.demo.demos.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.demos.entity.OrderInfo;
import com.example.demo.demos.mapper.OrderInfoMapper;
import com.example.demo.demos.service.OrderInfoService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author chtholly
 * @since 2023-12-30
 */
@Service
public class OrderInfoServiceImpl extends ServiceImpl<OrderInfoMapper, OrderInfo> implements OrderInfoService {

}
