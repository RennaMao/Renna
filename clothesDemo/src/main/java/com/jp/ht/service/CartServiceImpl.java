package com.jp.ht.service;

import com.jp.ht.dao.CartIDAO;
import com.jp.ht.dao.CartImplIDAO;
import com.jp.ht.entity.Cart;

public class CartServiceImpl implements CartIService {
	CartIDAO dao=new CartImplIDAO();
	@Override
	public void saveCart(Cart cart) {
	  dao.saveCart(cart);
		
	}

	@Override
	public void updateCart(Cart cart) {
       dao.updateCart(cart);
		
	}

	@Override
	public Cart getCartByProdIDName(Integer prodId, String userName) {
	
		return dao.getCartByProdIDName(prodId, userName);
	}

	@Override
	public void saveOrUpdate(Cart cart) {
          Cart c=dao.getCartByProdIDName(cart.getProductId(),cart.getUserName());
          if(c!=null) {
        	  dao.updateCart(cart);
          }else {
        	  dao.saveCart(cart);
          }
	}


}
