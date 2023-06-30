package com.jp.ht.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jp.ht.conn.ConnDB;
import com.jp.ht.entity.Classify;

public class ClassifyImplDAO implements ClassifyIDAO{

	@Override
	public List<Classify> getByCondition(String name) {
		String sql="SELECT * FROM classify WHERE className LIKE ?";
		PreparedStatement ps=null;
		List<Classify> l=new ArrayList<Classify>();
		
		try {
			ps=ConnDB.getConnection().prepareStatement(sql);
			ps.setString(1,"%"+name+"%");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Classify c=new Classify();
				c.setId(rs.getInt("id"));
				c.setClassName(rs.getString("className"));
				l.add(c);
			}
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		

		return l;
	}

}
