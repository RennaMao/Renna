package com.jp.ht.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jp.ht.conn.ConnDB;
import com.jp.ht.entity.Product;

public class ProductImplDAO implements ProductIDAO{
	@Override
	public List<Product> getPaging(int pageSize, int offset) {
		String sql="SELECT * FROM product LIMIT ? OFFSET ?";
		PreparedStatement ps=null;
        List<Product> list=new ArrayList<Product>();
	    
	    try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setInt(1,pageSize);
			ps.setInt(2,offset);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setProductName(rs.getString("productName"));
				p.setProductPrice(rs.getDouble("productPrice"));
				p.setCount(rs.getInt("count"));
				p.setProductCity(rs.getString("productCity"));
				p.setProductLogo(rs.getString("productLogo"));
				p.setClassId(rs.getInt("classid"));
				p.setViewCount(rs.getInt("viewCount"));
				
				list.add(p);
	
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}
	


	@Override
	public int getCount() {
		String sql="SELECT COUNT(*) cnt FROM product";
		PreparedStatement ps=null;
        int cnt=0;
	    
	    try {
			ps=ConnDB.getConnection().prepareStatement(sql);
		
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				cnt=rs.getInt("cnt");
				
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return cnt;
	}



	@Override
	public List<Product> getByClassName(String className, int pageSize, int offset) {
		String sql="SELECT * FROM product WHERE classid="
	               +"(SELECT id FROM classify WHERE className=?)LIMIT ? OFFSET ?";
		PreparedStatement ps=null;
		List<Product> l=new ArrayList<Product>();
		
		try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setString(1,className);
			ps.setInt(2,pageSize);
			ps.setInt(3,offset);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setProductName(rs.getString("productName"));
				p.setProductPrice(rs.getDouble("productPrice"));
				p.setCount(rs.getInt("count"));
				p.setProductCity(rs.getString("productCity"));
				p.setProductLogo(rs.getString("productLogo"));
				p.setClassId(rs.getInt("classid"));
				p.setViewCount(rs.getInt("viewCount"));
				
				l.add(p);
			}
	
			
			} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return l;
	}

 

	@Override
	public int getCountByClassName(String className) {
		String sql="SELECT COUNT(*) total FROM product WHERE classid="+
	               "(SELECT id FROM classify WHERE className=?)";
		PreparedStatement ps=null;
		int cnt=0;
		try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setString(1,className);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				cnt=rs.getInt("total");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return cnt;
	}



	@Override
	public Product getByID(Integer id) {
		String sql="SELECT * FROM product WHERE id=?";
		PreparedStatement ps=null;
		Product p=null;
		
		try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				p=new Product();
				p.setId(rs.getInt("id"));
				p.setProductName(rs.getString("productName"));
				p.setProductPrice(rs.getDouble("productPrice"));
				p.setCount(rs.getInt("count"));
				p.setProductCity(rs.getString("productCity"));
				p.setProductLogo(rs.getString("productLogo"));
				p.setClassId(rs.getInt("classid"));
				p.setViewCount(rs.getInt("viewCount"));
	
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return p;
	}



	@Override
	public List<Product> getProsByUserName(String userName) {
		String sql="SELECT * FROM product WHERE id"
				   +" IN(SELECT productId FROM cart WHERE userName=? )";
		PreparedStatement ps=null;
		List<Product> l=new ArrayList<Product>();
		try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setString(1,userName);
			
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setProductName(rs.getString("productName"));
				p.setProductPrice(rs.getDouble("productPrice"));
				p.setCount(rs.getInt("count"));
				p.setProductCity(rs.getString("productCity"));
				p.setProductLogo(rs.getString("productLogo"));
				p.setClassId(rs.getInt("classid"));
				p.setViewCount(rs.getInt("viewCount"));
				
				l.add(p);
		}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return l;
		

	}
	

}
