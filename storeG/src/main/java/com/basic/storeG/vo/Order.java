package com.basic.storeG.vo;

import java.security.Timestamp;

public class Order {
	private int orderNo;
    private String address;
    private String name;
    private String phoneNumber;
    private int salesPrice;
    private int discountPrice;
    private int totalPrice;
    private String items;
    private Timestamp orderDate;
    private int deliveryStatus;
    private int ordersqty;
    public Order() {}

    
    
    public Order(int orderNo, String address, String name, String phoneNumber, int salesPrice, int discountPrice,
			int totalPrice, String items, Timestamp orderDate, int deliveryStatus, int ordersqty) {
		super();
		this.orderNo = orderNo;
		this.address = address;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.salesPrice = salesPrice;
		this.discountPrice = discountPrice;
		this.totalPrice = totalPrice;
		this.items = items;
		this.orderDate = orderDate;
		this.deliveryStatus = deliveryStatus;
		this.ordersqty = ordersqty;
	}



	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getSalesPrice() {
		return salesPrice;
	}
	public void setSalesPrice(int salesPrice) {
		this.salesPrice = salesPrice;
	}
	public int getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public int getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(int deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public int getOrders_qty() {
		return ordersqty;
	}
	public void setOrders_qty(int ordersqty) {
		this.ordersqty = ordersqty;
	}
    
	
    
}
