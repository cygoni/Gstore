package com.basic.storeG.frontController;

import java.util.HashMap;

import com.basic.storeG.controller.MainController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
