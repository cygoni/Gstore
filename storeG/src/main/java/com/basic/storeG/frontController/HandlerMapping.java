package com.basic.storeG.frontController;

import java.util.HashMap;

import com.basic.storeG.cart.CartController;
import com.basic.storeG.controller.MainController;

import com.basic.storeG.controller.paymentController;

import com.basic.storeG.item.ItemListController;
import com.basic.storeG.item.ProductController;
import com.basic.storeG.item.itemsInsertController;
import com.basic.storeG.item.itemsInsertPageController;
import com.basic.storeG.member.JoinPageController;
import com.basic.storeG.member.MemberJoinController;
import com.basic.storeG.member.MemberLoginController;
import com.basic.storeG.member.MemberLogoutController;
import com.basic.storeG.member.MyOrderController;
import com.basic.storeG.member.ValidateIdController;

import com.basic.storeG.member.deleteMemberController;
import com.basic.storeG.member.modifyController;
import com.basic.storeG.member.myinfoController;
import com.basic.storeG.member.myinfomodifyController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/memberLogin.do", new MemberLoginController());
		mappings.put("/memberLogout.do", new MemberLogoutController());
		
		mappings.put("/joinPage.do", new JoinPageController());
		mappings.put("/memberJoin.do", new MemberJoinController());
		mappings.put("/validateId.do", new ValidateIdController());
		
		
		mappings.put("/itemList.do", new ItemListController());
		
		mappings.put("/itemsInsertPage.do", new itemsInsertPageController());
		mappings.put("/itemsInsert.do", new itemsInsertController());
		mappings.put("/product.do", new ProductController());
		
		mappings.put("/payment.do", new paymentController());
		 
		mappings.put("/myinfo.do", new myinfoController());
		mappings.put("/myinfomodify.do", new myinfomodifyController());
		mappings.put("/modify.do", new modifyController());
		mappings.put("/myOrder.do", new MyOrderController());
		mappings.put("/deleteMember.do",new deleteMemberController());
		
		mappings.put("/cart.do", new CartController());
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
