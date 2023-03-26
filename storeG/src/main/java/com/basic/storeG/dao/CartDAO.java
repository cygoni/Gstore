package com.basic.storeG.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.basic.storeG.util.MybatisConfig;
import com.basic.storeG.vo.Cart;

public class CartDAO {

	private CartDAO() {
	}

	private static CartDAO dao = new CartDAO();

	public static CartDAO getInstance() {
		return dao;
	}

	public boolean checkCartId(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		boolean checkId = session.selectOne("mapper.cart.checkCartId", id);
		session.close();

		if (checkId)
			return true;
		return false;
	}

	public boolean checkP(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		boolean checkP = session.selectOne("mapper.cart.checkP", id);
		session.close();

		if (checkP)
			return true;
		return false;
	}

	public boolean checkCartItem(int item_no) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		boolean checkItem = session.selectOne("mapper.cart.checkCartItem", item_no);
		session.close();

		if (checkItem)
			return true;
		return false;
	}

	public void addNewCart(String id, int item_no) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.insert("mapper.cart.addNewCart", Map.of("id", id, "item_no", item_no));
		session.close();

	}

	public Cart getCart(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Cart cart = session.selectOne("mapper.cart.getCart", id);
		session.close();

		return cart;
	}

	public boolean checkItem(int cart_no, int item_no) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		boolean checkI = session.selectOne("mapper.cart.checkItem", Map.of("cart_no", cart_no, "item_no", item_no));
		session.close();

		return checkI;
	}

	public void updateQty(int cart_no, int item_no) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Map<String, Integer> paramMap = new HashMap<>();
		paramMap.put("cart_no", cart_no);
		paramMap.put("item_no", item_no);

		session.update("mapper.cart.updateQty", paramMap);
		session.close();
	}

	public void addItem(int cart_no, int item_no) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.selectOne("mapper.cart.addItem", Map.of("cart_no", cart_no, "item_no", item_no));
		session.close();
	}
}
