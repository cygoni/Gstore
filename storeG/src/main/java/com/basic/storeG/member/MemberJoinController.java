package com.basic.storeG.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Member;


public class MemberJoinController implements Controller{
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String confirmpassword = request.getParameter("confirm_password");
		int money = 10000;
		String coupons = "1";
		String address = request.getParameter("address");
		
		
		Member vo = new Member();
		
		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setEmail(email);
		vo.setPhone(phone);
		vo.setMoney(money);
		vo.setCoupons(coupons);
		vo.setAddress(address);
		
		PrintWriter out = response.getWriter();
		
		int result = MemberDAO.getInstance().ValidId(id);
		
		if(result == 0 && confirmpassword.equals(pw)) {
			System.out.println("회원가입 성공" + vo);
			out.println("<script>alert('회원가입 성공');location='main.do';</script>");
			out.flush();
			
			MemberDAO.getInstance().addMember(vo);
		}else {
			System.out.println("회원가입 실패" + vo);
			out.println("<script>alert('회원가입 실패');history.go(-1)</script>");
			out.flush();	
			
		}
		return "main";
	}
}
