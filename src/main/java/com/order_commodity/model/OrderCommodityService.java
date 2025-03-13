package com.order_commodity.model;
import java.util.List;

public class OrderCommodityService {

    private OrderCommodityDAO_interface dao;

    public OrderCommodityService() {
        dao = new OrderCommodityJDBCDAO(); // 使用 JDBC 實現的 DAO
    }

    // 新增一筆預約商品記錄
    public OrderCommodityVO addOrderCommodity(Integer orderId, Integer commodityId) {
        OrderCommodityVO orderCommodityVO = new OrderCommodityVO();

        orderCommodityVO.setOrderId(orderId);
        orderCommodityVO.setCommodityId(commodityId);
        dao.insert(orderCommodityVO);

        return orderCommodityVO;
    }

    // 更新一筆預約商品記錄
    public OrderCommodityVO updateOrderCommodity(Integer orderCommodityId, Integer orderId, Integer commodityId) {
        OrderCommodityVO orderCommodityVO = new OrderCommodityVO();

        orderCommodityVO.setOrderCommodityId(orderCommodityId);
        orderCommodityVO.setOrderId(orderId);
        orderCommodityVO.setCommodityId(commodityId);
        dao.update(orderCommodityVO);

        return orderCommodityVO;
    }

    // 刪除一筆預約商品記錄
    public void deleteOrderCommodity(Integer orderCommodityId) {
        dao.delete(orderCommodityId);
    }

    // 根據預約商品編號查詢一筆記錄
    public OrderCommodityVO getOneOrderCommodity(Integer orderCommodityId) {
        return dao.findByPrimaryKey(orderCommodityId);
    }
    
    // 根據訂單編號查詢一筆記錄
    public OrderCommodityVO getOneOrderCommoditybyOrderid(Integer orderId) {
        return dao.findordercommodity(orderId);
    }

    // 查詢所有預約商品記錄
    public List<OrderCommodityVO> getAll() {
        return dao.getAll();
    }
}