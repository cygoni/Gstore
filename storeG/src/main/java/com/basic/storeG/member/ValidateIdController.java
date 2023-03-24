package com.basic.storeG.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.basic.storeG.dao.MemberDAO;
import com.basic.storeG.frontController.Controller;

public class ValidateIdController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id=request.getParameter("id"); 
		int result = MemberDAO.getInstance().ValidId(id);
		
		response.getWriter().print(result); 

		return null;
	
		
	}
}
