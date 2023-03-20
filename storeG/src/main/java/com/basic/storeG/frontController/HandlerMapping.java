package com.basic.storeG.frontController;

import java.util.HashMap;

import com.basic.storeG.controller.MainController;
import com.basic.storeG.controller.myinfoController;
import com.basic.storeG.controller.myinfomodifyController;
import com.basic.storeG.controller.paymentController;
import com.basic.storeG.item.ItemListController;
import com.basic.storeG.item.ProductController;
import com.basic.storeG.member.JoinPageController;
import com.basic.storeG.member.MemberJoinController;
import com.basic.storeG.member.MemberLoginController;
import com.basic.storeG.member.MemberLogoutController;
import com.basic.storeG.member.MyOrderController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/memberLogin.do", new MemberLoginController());
		mappings.put("/memberLogout.do", new MemberLogoutController());
		mappings.put("/joinPage.do", new JoinPageController());
		mappings.put("/memberJoin.do", new MemberJoinController());
		mappings.put("/itemList.do", new ItemListController());
		mappings.put("/payment.do", new paymentController());
		mappings.put("/product.do", new ProductController());
		mappings.put("/myinfo.do", new myinfoController());
		mappings.put("/myinfomodify.do", new myinfomodifyController());
		mappings.put("/myOrder.do", new MyOrderController());
		
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
