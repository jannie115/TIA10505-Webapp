package com.orders.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.orders.model.OrdersDAO_interface;
import com.orders.model.OrdersJDBCDAO;
import com.orders.model.OrdersService;
import com.orders.model.OrdersVO;

/**
 * Servlet implementation class OrdersServlet
 */

public class OrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		doPost(req, res);

	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
//		System.out.println(action);
				
		if ("getOneOrders".equals(action)) {
			/***************************1.接收請求參數****************************************/
			String str = req.getParameter("order_id");
			Integer orderid = Integer.valueOf(str);
//			System.out.println(orderid);
			/***************************2.開始查詢資料*****************************************/
			OrdersService orderSvc = new OrdersService();
			OrdersVO ordersVO = orderSvc.getOneOrders(orderid);
			String ordertime = orderSvc.getOneTimeslot(orderid);//轉換預約時間
//			System.out.print(list);
			/***************************3.查詢完成,準備轉交(Send the Success view)*************/
			req.setAttribute("ordersVO", ordersVO);
			req.setAttribute("ordertime", ordertime);
			String url = "/front-end/order/orderdetail.jsp";
//			System.out.println("123");
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);	
		}
		
		if ("deleteOrder".equals(action)) {
			String str = req.getParameter("order_id");
			Integer orderid = Integer.valueOf(str);
			OrdersService orderSvc = new OrdersService();
			orderSvc.deleteOrders(orderid);
			String url = "/front-end/order/Orderlist.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);	
		}
	}

}
