package com.order_commodity.model;


public class Testordercommodity {
	public static void main(String[] args) {
		OrderCommodityDAO_interface dao = new OrderCommodityJDBCDAO();
		
		OrderCommodityVO orderCommodityVO = dao.findordercommodity(2);
		System.out.print(orderCommodityVO.getCommodityId());
		
	}
}
