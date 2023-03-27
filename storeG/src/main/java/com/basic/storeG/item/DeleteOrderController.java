package com.basic.storeG.item;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.dao.OrderDAO;
import com.basic.storeG.frontController.Controller;


public class DeleteOrderController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		OrderDAO odao = OrderDAO.getInstance();
		
		odao.deleteOrder(order_no);
		
		return "redirect:/myOrder.do";
	}
}
