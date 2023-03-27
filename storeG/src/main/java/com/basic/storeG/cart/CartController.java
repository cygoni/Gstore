package com.basic.storeG.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.storeG.dao.CartDAO;
import com.basic.storeG.dao.ItemDAO;
import com.basic.storeG.frontController.Controller;
import com.basic.storeG.vo.Cart;

public class CartController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");

		String itemNo = request.getParameter("item_no");
		int item_no = Integer.parseInt(itemNo);

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ItemDAO idao = ItemDAO.getInstance();
		CartDAO cdao = CartDAO.getInstance();

		boolean checkId = cdao.checkCartId(id);
		System.out.println("checkId = " + checkId);
//		if (!checkId) {
//			// 아이디가 존재하지 않으니 새로운카트 만들기
//			cdao.addNewCart(id, item_no);
//		} else {
//			// 아이디가 존재하니 결제 안한거만 가져오
			boolean checkP = cdao.checkP(id); // 결제 안된게 있으면 true
			System.out.println("checkP = " + checkP);
//			if (!checkP) {
//				// 결제 된거니깐 새로 만들기
//				cdao.addNewCart(id, item_no);
//			} else {
//				// 결제 안된거 있음 그래서 가져오기
				Cart c = cdao.getCart(id);
				System.out.println("c = " + c);
//				// 가져와서 장바구니에 아이템 있는지 확인하기
//				boolean exItem = cdao.checkItem(c.getCart_no(), item_no);
//				if(exItem) {
//					//item이 존재하니깐 수량만 업데이트
//					cdao.updateQty(c.getCart_no(), item_no);
//				} else {
//					//아이템이 없으니깐 배열에 추가
//					cdao.addItem(c.getCart_no(), item_no);
//				}
//			}
//		}
		
//		Cart cart = cdao.getCart(id);
		if(c == null) return "view/itemList";
		request.setAttribute("cart", c);

		return "view/myOrder";
	}
}
