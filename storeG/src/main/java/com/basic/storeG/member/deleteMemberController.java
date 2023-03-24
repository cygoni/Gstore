package com.basic.storeG.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Member;

public class deleteMemberController implements Controller{
		
		@Override
		public String requestHandler(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			response.setContentType("text/html; charset=UTF-8");
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			String pw = request.getParameter("pw");
			
			
			Member member = new Member();
			member.setId(id);
			member.setPw(pw);
			
			
			PrintWriter out = response.getWriter();
			
			if(id.equals("admin")) {
				System.out.println("관리자 삭제불가");
				out.println("<script>alert('관리자 삭제불가');history.go(-1);</script>");
				return "member/myinfo";
			}
			
			int result = MemberDAO.getInstance().deleteMember(member);
		
			if(result == 1 ) {
				session.removeAttribute("id");
				MemberDAO.getInstance().deleteMember(member);
				out.println("<script>alert('회원탈퇴 성공');location='main.do';</script>");
				out.flush();
			}else {
				System.out.println("db연동실패 DeleteUserController");
				out.println("<script>alert('비밀번호 입력 오류');history.go(-1);</script>");
				out.flush();
			}
			
			return "main";
		}
}
