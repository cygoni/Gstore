package com.basic.storeG.item;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.dao.ItemDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Item;


public class ItemListController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		String cate = request.getParameter("cate");
		System.out.println("cate=" +cate);
		
		ItemDAO dao = ItemDAO.getInstance();
		List<Item> list = dao.getItemList(Integer.parseInt(cate));
		request.setAttribute("list", list);
		request.setAttribute("cate", cate);
		
		return "view/itemList";
	}
}
