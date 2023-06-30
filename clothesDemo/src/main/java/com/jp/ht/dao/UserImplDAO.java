package com.jp.ht.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jp.ht.conn.ConnDB;

import com.jp.ht.entity.User;
import com.mysql.jdbc.Statement;


public class UserImplDAO implements UserIDAO{

	@Override
	public User getNameAndPwd(String name,String pwd) {
		
		String sql="SELECT * FROM user WHERE userName=? AND pwd=? AND status='2'";
		PreparedStatement ps=null;
	    User u=null;
	    
	    try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2, pwd);
		
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setUserName(rs.getString("username"));
				u.setPwd(rs.getString("pwd"));
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	     
		return u;
	}




	@Override
	public void addUser(String userName,String pwd) {
		String sql ="INSERT INTO `user` (`userName`, `pwd`, `status`, `registtime`) VALUES (?, ?, '2', NOW())";
	      PreparedStatement ps = null;


	     try {
	         ps = ConnDB.getConnection().prepareStatement(sql);
	         ps.setString(1,userName);
	     
	         ps.setString(2, pwd);
	         
	      
	         ps.executeUpdate();
	     } catch (SQLException e) {
	         e.printStackTrace();
	     }
	 }
		
	}
	



		
		
	




