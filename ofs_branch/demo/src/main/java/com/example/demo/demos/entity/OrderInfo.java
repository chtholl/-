package com.example.demo.demos.entity;

import com.baomidou.mybatisplus.annotation.IdType;

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
public class OrderInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 销售订单id
     */
    @TableId(value = "order_info_id", type = IdType.ID_WORKER)
    private Integer orderInfoId;

    /**
     * 创建时间（分表字段)
     */
    private Date createTime;

    /**
     * 销售订单名称
     */
    private String orderInfoName;


    public Integer getOrderInfoId() {
        return orderInfoId;
    }

    public void setOrderInfoId(Integer orderInfoId) {
        this.orderInfoId = orderInfoId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
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
        "orderInfoId=" + orderInfoId +
        ", createTime=" + createTime +
        ", orderInfoName=" + orderInfoName +
        "}";
    }
}
