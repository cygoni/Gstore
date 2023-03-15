package com.basic.storeG.vo;

public class Member {
	private int memberNo;
    private String id;
    private String pw;
    private String name;
    private String address;
    private int mileage;
    private String coupons;
    private String wishlist;
    private String cart;
    private int orderHistory;
    private int money;
    private String review;
    private String phone;
    private String email;
    
    public Member() {}
    
	public Member(int memberNo, String id, String pw, String name, String address, int mileage, String coupons,
			String wishlist, String cart, int orderHistory, int money, String review, String phone, String email) {
		super();
		this.memberNo = memberNo;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.address = address;
		this.mileage = mileage;
		this.coupons = coupons;
		this.wishlist = wishlist;
		this.cart = cart;
		this.orderHistory = orderHistory;
		this.money = money;
		this.review = review;
		this.phone = phone;
		this.email = email;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getCoupons() {
		return coupons;
	}
	public void setCoupons(String coupons) {
		this.coupons = coupons;
	}
	public String getWishlist() {
		return wishlist;
	}
	public void setWishlist(String wishlist) {
		this.wishlist = wishlist;
	}
	public String getCart() {
		return cart;
	}
	public void setCart(String cart) {
		this.cart = cart;
	}
	public int getOrderHistory() {
		return orderHistory;
	}
	public void setOrderHistory(int orderHistory) {
		this.orderHistory = orderHistory;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
    
    
}
