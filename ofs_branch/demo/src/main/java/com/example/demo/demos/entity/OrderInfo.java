package com.example.demo.demos.entity;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.IdType;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * <p>
 *
 * </p>
 *
 * @author chtholly
 * @since 2023-12-30
 */
public class OrderInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 销售订单id
     */
    @TableId(value = "id")
    private String id;

    /**
     * 创建时间（分表字段)
     */
    @TableField(value = "create_Time", updateStrategy = FieldStrategy.NEVER)
    private LocalDateTime createTime;

    /**
     * 销售订单名称
     */
    private String orderInfoName;


    public OrderInfo() {
    }

    public OrderInfo(LocalDateTime createTime, String orderInfoName) {
        this.createTime = createTime;
        this.orderInfoName = orderInfoName;
    }

    public String getOrderInfoId() {
        return id;
    }

    public void setOrderInfoId(String id) {
        this.id = id;
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public String getOrderInfoName() {
        return orderInfoName;
    }

    public void setOrderInfoName(String orderInfoName) {
        this.orderInfoName = orderInfoName;
    }

    @Override
    public String toString() {
        return "OrderInfo{" +
        "id=" + id +
        ", createTime=" + createTime +
        ", orderInfoName=" + orderInfoName +
        "}";
    }
}
