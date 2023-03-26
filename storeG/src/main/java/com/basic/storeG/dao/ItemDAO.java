package com.basic.storeG.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.storeG.util.MybatisConfig;
import com.basic.storeG.vo.Item;
import com.basic.storeG.vo.Member;

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
	
	 public int addItems(Item item) {
			SqlSession session= MybatisConfig.getInstance().openSession(true);
			int cnt = session.insert("mapper.item.itemsInsert",item);
			session.close();
			return cnt;
		}
}
