package com.basic.storeG.vo;

import java.util.Date;

public class Item {
	private int itemNo;
    private int qty;
    private String img;
    private String pName;
    private int price;
    private int category;
    private double rating;
    private String img_hover;
    private String data;
    private Date registerDate;
    
    
    public Item() {}


	public Item(int itemNo, int qty, String img, String pName, int price, int category, double rating, String img_hover,
			String data, Date registerDate) {
		super();
		this.itemNo = itemNo;
		this.qty = qty;
		this.img = img;
		this.pName = pName;
		this.price = price;
		this.category = category;
		this.rating = rating;
		this.img_hover = img_hover;
		this.data = data;
		this.registerDate = registerDate;
	}


	public int getItemNo() {
		return itemNo;
	}


	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}


	public int getQty() {
		return qty;
	}


	public void setQty(int qty) {
		this.qty = qty;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getCategory() {
		return category;
	}


	public void setCategory(int category) {
		this.category = category;
	}


	public double getRating() {
		return rating;
	}


	public void setRating(double rating) {
		this.rating = rating;
	}


	public String getImg_hover() {
		return img_hover;
	}


	public void setImg_hover(String img_hover) {
		this.img_hover = img_hover;
	}


	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public Date getRegisterDate() {
		return registerDate;
	}


	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
    
	
    
    
    
}
