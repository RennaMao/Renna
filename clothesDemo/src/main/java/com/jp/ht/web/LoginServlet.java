package com.jp.ht.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;

import com.jp.ht.entity.User;
import com.jp.ht.service.UserIService;
import com.jp.ht.service.UserServiceImpl;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String pwd=req.getParameter("pwd");
	
		if(StringUtils.isNotBlank(username)
				&&StringUtils.isNotBlank(pwd)) {
			UserIService s=new UserServiceImpl();
			User u=s.getNameAndPwd(username,pwd);
			System.out.println(u);
			if(u!=null) {
				req.getSession().setAttribute("userInfo", u);
		
			
			req.getRequestDispatcher("home.jsp").forward(req, resp);
			
				
			}else {
				
				req.getRequestDispatcher("home.jsp").forward(req, resp);
			}
		}
		
		
		
		
		
	
	}

}
