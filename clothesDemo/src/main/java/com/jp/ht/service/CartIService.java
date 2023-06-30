package com.jp.ht.service;

import com.jp.ht.entity.Cart;

public interface CartIService {
	  public void saveCart(Cart cart);
	  public void updateCart(Cart cart);
	  public Cart getCartByProdIDName(Integer prodId,String userName);
	  public void saveOrUpdate(Cart cart);
}
