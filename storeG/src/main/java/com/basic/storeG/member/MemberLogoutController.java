package com.basic.storeG.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.storeG.frontController.Controller;


public class MemberLogoutController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		
		PrintWriter out = response.getWriter();
	
		out.println("<script>alert('로그아웃하셨습니다');location='main.do'</script>");
		out.flush();
		out.close();
		session.removeAttribute("id");
		
		
		return "main";
	}
}
