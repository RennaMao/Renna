package com.jp.ht.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jp.ht.conn.ConnDB;
import com.jp.ht.entity.Cart;

public class CartImplIDAO implements CartIDAO{

	@Override
	public void saveCart(Cart cart) {
		String sql="INSERT INTO cart VALUES(?,?,?,?,?)";
		  PreparedStatement ps=null;
		  try {
		   ps = ConnDB.getConnection().prepareStatement(sql);
		    ps.setInt(1,cart.getProductId());
		    ps.setInt(2,cart.getProductCount());
		    ps.setString(3,cart.getUserName());
		    ps.setDouble(4,cart.getPrice());
		    ps.setDouble(5,cart.getSubTotal());
		    ps.executeUpdate();
		   
		   
		  } catch (SQLException e) {
		   
		   e.printStackTrace();
		  }
		  
		  
		
	}

	@Override
	public void updateCart(Cart cart) {
		 String sql="UPDATE cart SET productCount=? , subTotal=? "
				    + "WHERE productId=? AND userName=?";
				  PreparedStatement ps=null;
				  try {
				   ps = ConnDB.getConnection().prepareStatement(sql);
				   ps.setInt(1,cart.getProductCount());
				   ps.setDouble(2,cart.getSubTotal());
				   ps.setInt(3,cart.getProductId());
				   ps.setString(4,cart.getUserName());
				   ps.executeUpdate();
				  } catch (SQLException e) {

				   e.printStackTrace();
				  }
		
	}

	@Override
	public Cart getCartByProdIDName(Integer prodId, String userName) {
		String sql="SELECT * FROM cart WHERE userName= ? AND productId= ? ";
		  PreparedStatement ps=null;
		  Cart c =null;
		  try {
		   ps = ConnDB.getConnection().prepareStatement(sql);
		   ps.setString(1,userName);
		   ps.setInt(2,prodId);
		   ResultSet rs = ps.executeQuery();
		   while (rs.next()) {
		    c =new Cart();
		    c.setProductId(rs.getInt("productId"));
		    c.setUserName(rs.getString("userName"));
		    c.setProductCount(rs.getInt("productCount"));
		   }
		  } catch (SQLException e) {
		
		   e.printStackTrace();
		  }
		  return c;
		 }

}
