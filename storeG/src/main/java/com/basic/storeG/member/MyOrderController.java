package com.basic.storeG.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.dao.OrderDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Member;
import com.basic.storeG.vo.Order;


public class MyOrderController implements Controller{
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String itemNo = request.getParameter("item_no");
		//int item_no = Integer.parseInt(itemNo);
		int item_no = itemNo != null ? Integer.parseInt(itemNo) : 0;
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		OrderDAO odao = OrderDAO.getInstance();
		MemberDAO mdao = MemberDAO.getInstance();
		
		Member member = mdao.getOneMember(id);
		if(item_no != 0) odao.makeNewOrder(item_no, member);
		
		List<Order> list;
		if(!id.equals("admin")) list = odao.getMyOrderList(member.getName());
		else list = odao.getAllOrderList();
		request.setAttribute("list", list);
		return "view/myOrder";
	}
}
