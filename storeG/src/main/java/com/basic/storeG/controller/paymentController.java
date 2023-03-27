package com.basic.storeG.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.storeG.dao.ItemDAO;
import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Item;
import com.basic.storeG.vo.Member;
import com.basic.storeG.vo.Order;

public class paymentController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println("pay itemno= " + request.getParameter("itemNo"));
		int itemNo = Integer.parseInt(request.getParameter("itemNo"));
		
		ItemDAO dao = ItemDAO.getInstance();
		Item item = dao.getOneItem(itemNo);
		
		
		
		request.setAttribute("item", item);
		
		Member member = MemberDAO.getInstance().getOneMember(id);
		if(member!=null) {
			request.setAttribute("vo", member);
			return "view/payment";
		}else {
			System.out.println("db연동실패");
			return "view/payment";
		}
		
		
	}
}
