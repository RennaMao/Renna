package com.jp.ht.service;

import com.jp.ht.entity.User;

public interface UserIService {
	 public User getNameAndPwd(String name,String pwd);
	 public void addUser(String userName,String pwd);
}
