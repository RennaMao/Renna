package com.jp.ht.service;

import com.jp.ht.dao.UserIDAO;
import com.jp.ht.dao.UserImplDAO;
import com.jp.ht.entity.User;

public class UserServiceImpl  implements UserIService {
	UserIDAO dao= new UserImplDAO();

	@Override
	public User getNameAndPwd(String name, String pwd) {
	
		return dao.getNameAndPwd(name, pwd);
	}

	
	@Override
	public void addUser(String userName,String pwd) {
		dao.addUser(userName, pwd);
		
	}
	
	
	

}















