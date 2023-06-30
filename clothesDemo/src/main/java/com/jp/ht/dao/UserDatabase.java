package com.jp.ht.dao;

import java.util.HashMap;

import com.jp.ht.entity.User;

public class UserDatabase {
	 public static HashMap<String,User> userMap = new HashMap<>();
	   
	    static {
	        User u1 = new User();
	        u1.set("admin","1");
	        
	        User u2 = new User();
	        u2.set("Logan","1");
	        
	        userMap.put(u1.getUserName(), u1);
	        userMap.put(u2.getUserName(), u2);
	    }
	}

