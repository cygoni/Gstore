package com.basic.storeG.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.storeG.util.MybatisConfig;
import com.basic.storeG.vo.Item;

public class ItemDAO {

	private ItemDAO() {}
	
	private static ItemDAO dao = new ItemDAO();
	public static ItemDAO getInstance() {
		return  dao;
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
	
}
