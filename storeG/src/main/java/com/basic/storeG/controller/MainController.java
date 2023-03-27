package com.basic.storeG.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.dao.ItemDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Item;

public class MainController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ItemDAO dao = ItemDAO.getInstance();
		List<Item> nList = dao.getLatestItems();
		List<Item> pList = dao.getRandomItems();
		
		request.setAttribute("nList", nList);
		System.out.println("test=" +nList.get(0).getItemNo());
		System.out.println("test=" +nList.get(0).getpName());
		request.setAttribute("pList", pList);

		return "main";
	}

}
