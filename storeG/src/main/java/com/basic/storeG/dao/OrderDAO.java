package com.basic.storeG.dao;

import java.security.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.sql.*;

import org.apache.ibatis.session.SqlSession;

import com.basic.storeG.util.MybatisConfig;
import com.basic.storeG.vo.Item;
import com.basic.storeG.vo.Member;
import com.basic.storeG.vo.Order;

public class OrderDAO {
	private OrderDAO() {
	}

	private static OrderDAO dao = new OrderDAO();

	public static OrderDAO getInstance() {
		return dao;
	}

	public void makeNewOrder(int item_no, Member member) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Item item = session.selectOne("mapper.item.getOneItem", item_no);
		int qty = item.getQty(); // 해당 상품의 현재 수량 가져오기

		if (qty > 0) {
			Order order = new Order();
			order.setItem(item.getpName()); // 주문 상품명
			order.setAddress(member.getAddress()); // 주문 배송지 주소
			order.setName(member.getName()); // 주문자 이름
			order.setPhoneNumber(member.getPhone()); // 주문자 전화번호
			order.setSalesPrice(item.getPrice()); // 판매 가격
			order.setDiscountPrice(0); // 할인 가격
			order.setTotalPrice(item.getPrice()); // 최종 결제 가격
			
			order.setDeliveryStatus(1); // 배송 상태를 '배송 준비 중'으로 설정합니다.
			order.setCart_no(0); // 장바구니 번호를 0으로 설정합니다.
			session.insert("mapper.order.insertOrder", order);
			session.update("mapper.order.updateItemQty", item_no);
		}
		session.close();
	}

	public List<Order> getMyOrderList(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Order> list = session.selectList("mapper.order.getMyOrderList", id);
		session.close();

		return list;
	}
	
	public void deleteOrder(int order_no) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.delete("mapper.order.deleteOrder", order_no);
		session.close();
	}
	
	public List<Order> getAllOrderList() {
	    SqlSession session = MybatisConfig.getInstance().openSession(true);

	    List<Order> orderList = session.selectList("mapper.order.getAllOrderList");
	    
	    session.close();

	    return orderList;
	}

}
