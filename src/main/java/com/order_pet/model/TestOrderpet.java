package com.order_pet.model;

public class TestOrderpet {
	public static void main(String[] args) {
		OrderPetDAO_interface dao = new OrderPetJDBCDAO();
		
		OrderPetVO orderpetVO = dao.findpet(6);
		System.out.print(orderpetVO.getOpetId());
		
	}
}
