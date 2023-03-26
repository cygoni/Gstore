package com.basic.storeG.vo;

public class Cart {
	
	private int cart_no;
	private String items;
	private String id;
	private boolean purchased;
	public Cart(int cart_no, String items, String id, boolean purchased) {
		super();
		this.cart_no = cart_no;
		this.items = items;
		this.id = id;
		this.purchased = purchased;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public boolean isPurchased() {
		return purchased;
	}
	public void setPurchased(boolean purchased) {
		this.purchased = purchased;
	}
	
	
	
}
