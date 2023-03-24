package com.basic.storeG.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Member;

public class modifyController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String email = request.getParameter("email"); 
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
		Member member = MemberDAO.getInstance().getOneMember(id);
		
		request.setAttribute("vo", member);
		
		Member user = new Member();
		user.setId(id);
		user.setAddress(address);
		user.setPhone(phone);
		user.setEmail(email);
		
		

		int result = MemberDAO.getInstance().memberUpdate(user);
	
		
		
		if(member!=null && result ==1 ) {
			System.out.println(email + " " +phone + " " +address);
			System.out.println("수정성공 ");
			response.getWriter().print(result);
			MemberDAO.getInstance().memberUpdate(user);
			
			return "main";
		}else {
			
			System.out.println("수정실패 ");
			response.getWriter().print("null");
			
			return "member/myinfomodify";
		}
		
		
	
	
	}
}
