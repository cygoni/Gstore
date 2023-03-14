package com.basic.storeG.frontController;

public class ViewResolver {
	public static String makeView(String nextPage) {
		return "/WEB-INF/"+nextPage+".jsp";
	}
}
