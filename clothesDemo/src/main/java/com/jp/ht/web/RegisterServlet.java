package com.jp.ht.web;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.jp.ht.service.UserIService;
import com.jp.ht.service.UserServiceImpl;

public class RegisterServlet extends HttpServlet {
	@Override
	 protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  this.doPost(req, resp);
	 }

	 @Override
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  UserIService u = new UserServiceImpl();

	  String userName = req.getParameter("userName");
	
	  String pwd = req.getParameter("pwd");
	

	  if (StringUtils.isNotBlank(userName)&&StringUtils.isNotBlank(pwd)) {
	
	   
	   u.addUser(userName,pwd);
	   
	   resp.sendRedirect("success.jsp");
	  } else {
	   
	   resp.sendRedirect("error.jsp");
	  }
	 }

	}


