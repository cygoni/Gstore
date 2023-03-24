package com.basic.storeG.item;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.dao.ItemDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Item;

public class ProductController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		int itemNo = Integer.parseInt(request.getParameter("itemNo"));
		
		ItemDAO dao = ItemDAO.getInstance();
		Item item = dao.getOneItem(itemNo);
		String cateF = "LostArk";
		//if(item.getCategory()==1) cateF="LostArk";
		
		request.setAttribute("item", item);
		request.setAttribute("cateF", cateF);
		
		return "view/product";
	}
}
