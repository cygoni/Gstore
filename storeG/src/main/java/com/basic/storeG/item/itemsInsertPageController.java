package com.basic.storeG.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.storeG.frontController.Controller;

public class itemsInsertPageController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("itemsInsert");
		
		return "items/itemsInsert";
	}
}
