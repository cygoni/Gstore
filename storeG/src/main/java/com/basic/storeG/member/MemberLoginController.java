package com.basic.storeG.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Member;


public class MemberLoginController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = MemberDAO.getInstance();
		Member vo = new Member();
		vo.setId(id);
		vo.setPw(pw);
		
		String memberid = dao.memberLogin(vo);
		
		HttpSession session = request.getSession();
		if(memberid != null) {
			session.setAttribute("id", id);
			if(memberid.equals("admin")) {
				session.setAttribute("admin", id);
			}
			response.getWriter().print(memberid);
		} else {
			response.getWriter().print("null");
		}
						
		return "main";
	}
}
