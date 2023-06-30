package com.jp.ht.entity;

public class Cart {
	private Integer productId;
	private Integer productCount;
	private String userName;
	private Double price;
	private Double subTotal;

	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getProductCount() {
		return productCount;
	}
	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(Double subTotal) {
		this.subTotal = subTotal;
	}
	@Override
	public String toString() {
		return "Cart [productId=" + productId + ", productCount=" + productCount + ", userName=" + userName + ", price="
				+ price + ", subTotal=" + subTotal + "]";
	}
	

}
