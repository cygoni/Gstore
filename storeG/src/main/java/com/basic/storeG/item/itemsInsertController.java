package com.basic.storeG.item;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.text.DateFormatter;

import com.basic.storeG.dao.ItemDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Item;

public class itemsInsertController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		String img = request.getParameter("img");
		String pName = request.getParameter("pName");
		int price = Integer.parseInt(request.getParameter("price"));
		int category = Integer.parseInt(request.getParameter("category"));
//		String imghover = request.getParameter("imghover");
		String imghover = "[\"one11_a01.jpg\", \"one11_a02.jpg\", \"one11_a03.jpg\"]";
//		String data = request.getParameter("data");
		String data = "[\"one11_01.jpg\", \"one11_02.jpg\", \"one11_03.jpg\", \"one11_04.jpg\", \"one11_05.jpg\", \"one11_06.jpg\", \"one11_07.jpg\", \"one11_08.jpg\"]";
		int qty=10;
		
		Item vo = new Item();
		
		Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yy-MM-dd");
        String strDate = dateFormat.format(date);
        

        
        Date rdate=null;
		try {
			  rdate = dateFormat.parse(strDate);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		System.out.println(rdate);
		
		vo.setQty(qty);
		vo.setImg(img);
		vo.setpName(pName);
		vo.setPrice(price);
		vo.setCategory(category);
		vo.setImg_hover(imghover);
		vo.setData(data);
		vo.setRegisterDate(rdate);
		
		PrintWriter out = response.getWriter();
	
		System.out.println("아이템 추가 성공" + vo);
		out.println("<script>alert('아이템 추가 성공');location='itemsInsertPage.do';</script>");
		out.flush();
		ItemDAO.getInstance().addItems(vo);
		
		
		return "main";
	}

	
}
