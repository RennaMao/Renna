package com.jp.ht.dao;

import com.jp.ht.entity.User;

public interface UserIDAO {
	public User getNameAndPwd(String name,String pwd);

	public void addUser(String userName,String pwd);

}
