package com.example.demo.demos.service.impl;




import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.demos.entity.OrderDetail;
import com.example.demo.demos.mapper.OrderDetailMapper;
import com.example.demo.demos.service.OrderDetailService;
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
public class OrderDetailServiceImpl extends ServiceImpl<OrderDetailMapper, OrderDetail> implements OrderDetailService {

}
