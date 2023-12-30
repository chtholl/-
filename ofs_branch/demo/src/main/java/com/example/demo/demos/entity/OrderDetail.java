package com.example.demo.demos.entity;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 *
 * </p>
 *
 * @author chtholly
 * @since 2023-12-30
 */
public class OrderDetail implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 销售订单id
     */
    @TableId(value = "id")
    private String id;

    /**
     * 销售订单子表id
     */
    private String orderOrderId;

    public OrderDetail() {
    }

    /**
     * 创建时间
     */
    @TableField(value = "create_Time", updateStrategy = FieldStrategy.NEVER)
    private LocalDateTime createTime;

    public OrderDetail(String orderOrderId, LocalDateTime createTime) {

        this.orderOrderId = orderOrderId;
        this.createTime = createTime;
    }

    public String getOrderDetailId() {
        return id;
    }

    public void setOrderDetailId(String id) {
        this.id = id;
    }

    public String getOrderOrderId() {
        return orderOrderId;
    }

    public void setOrderOrderId(String orderOrderId) {
        this.orderOrderId = orderOrderId;
    }


    @Override
    public String toString() {
        return "OrderDetail{" +
        "id=" + id +
        ", orderOrderId=" + orderOrderId +
        ", createTime=" + createTime +
        "}";
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }
    public LocalDateTime getCreateTime() {
        return createTime;
    }
}
