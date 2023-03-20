package com.basic.storeG.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Member;

public class myinfoController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		Member member = MemberDAO.getInstance().getOneMember(id);
		if(member!= null) {
		request.setAttribute("vo", member);
		return "view/myinfo";
		}else {
			System.out.println("db연동실패 UserDAO.getInstance().getOneUser(id)");
			return "main";
		}
		
	}
}
