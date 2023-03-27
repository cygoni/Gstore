package com.basic.storeG.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.storeG.util.MybatisConfig;
import com.basic.storeG.vo.Item;

public class ItemDAO {

	private ItemDAO() {
	}

	private static ItemDAO dao = new ItemDAO();

	public static ItemDAO getInstance() {
		return dao;
	}

	public List<Item> getItemList(int cate) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Item> itemList = session.selectList("mapper.item.getItemList", cate);
		session.close();

		return itemList;
	}

	public Item getOneItem(int itemNo) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Item item = session.selectOne("mapper.item.getOneItem", itemNo);
		session.close();

		return item;
	}

	public void addItems(Item item) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.insert("mapper.item.itemsInsert", item);
		session.close();
	}

	public List<Item> getLatestItems() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Item> items = session.selectList("mapper.item.getLatestItems");
		session.close();

		return items;

	}

	public List<Item> getRandomItems() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Item> items = session.selectList("mapper.item.getRandomItems");
		session.close();
		
		return items;

	}
	
	public void addQty(String item) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.update("mapper.item.addQty", item);
		session.close();
	}

}
