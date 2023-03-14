package com.basic.storeG.frontController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.frontController.Controller;

@WebServlet("*.do")
public class StoreGFrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		System.out.println("url=" + url); 
		String ctx=request.getContextPath();
		String command=url.substring(ctx.length());
		System.out.println("command=" + command); 
		Controller controller=null;
	}
}
