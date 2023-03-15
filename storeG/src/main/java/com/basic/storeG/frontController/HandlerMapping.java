package com.basic.storeG.frontController;

import java.util.HashMap;

import com.basic.storeG.controller.MainController;
import com.basic.storeG.member.MemberLoginController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/memberLogin.do", new MemberLoginController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
