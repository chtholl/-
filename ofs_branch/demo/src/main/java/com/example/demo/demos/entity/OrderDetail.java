package com.example.demo.demos.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDateTime;
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
    @TableId(value = "order_detail_id", type = IdType.ID_WORKER)
    private Integer orderDetailId;

    /**
     * 销售订单子表id
     */
    private Integer orderOrderId;


    /**
     * 创建时间
     */
    private Date createTime;


    public Integer getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(Integer orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public Integer getOrderOrderId() {
        return orderOrderId;
    }

    public void setOrderOrderId(Integer orderOrderId) {
        this.orderOrderId = orderOrderId;
    }


    @Override
    public String toString() {
        return "OrderDetail{" +
        "orderDetailId=" + orderDetailId +
        ", orderOrderId=" + orderOrderId +
        ", createTime=" + createTime +
        "}";
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    public Date getCreateTime() {
        return createTime;
    }
}
