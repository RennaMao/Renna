package com.jp.ht.dao;

import com.jp.ht.entity.Cart;

public interface CartIDAO {
	  public void saveCart(Cart cart);
	  public void updateCart(Cart cart);
	  public Cart getCartByProdIDName(Integer prodId,String userName);
}
