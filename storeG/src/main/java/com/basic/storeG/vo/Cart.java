package com.basic.storeG.vo;

public class Cart {
	
	private int cart_no;
	private String items;
	private String name;
	
	public Cart(int cart_no, String items, String name) {
		super();
		this.cart_no = cart_no;
		this.items = items;
		this.name = name;
	}
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
