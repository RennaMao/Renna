package com.jp.ht.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.jp.ht.entity.Product;
import com.jp.ht.service.ProductIService;
import com.jp.ht.service.ProductServiceImpl;

public class ProdDetailServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	       this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          String pid=req.getParameter("pid");
          
          if(StringUtils.isNotBlank(pid)) {
        	  
        	  int id=Integer.parseInt(pid);
        	  ProductIService s=new ProductServiceImpl();
        	  Product p=s.getByID(id);
        	  req.setAttribute("prod",p);
        	  req.getRequestDispatcher("detail.jsp").forward(req, resp);
          }
     
	
	}
}
