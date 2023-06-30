package com.jp.ht.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jp.ht.entity.Product;
import com.jp.ht.service.ProductIService;
import com.jp.ht.service.ProductServiceImpl;

public class TransferServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductIService s=new ProductServiceImpl();
	      String offsetStr=req.getParameter("offset");
	      String curPageStr=req.getParameter("curPage");
	      int offset=0;
	      int curPage=1;
	      if(offsetStr!=null) {
	    	  offset=Integer.parseInt(offsetStr);
	      }
	      if(curPageStr!=null) {
	    	  curPage=Integer.parseInt(curPageStr);
	      }
	      
	      List<Product> list=s.getPaging(4,offset);
	      int cnt=s.getCount();   
	      req.setAttribute("prods",list);
	      req.setAttribute("cnt",cnt);
	      req.setAttribute("curPage",curPage);
	      req.getRequestDispatcher("home.jsp").forward(req, resp);
	      
		
	
	}

}
