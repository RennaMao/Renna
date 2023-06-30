package com.jp.ht.web;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jp.ht.entity.Cart;
import com.jp.ht.entity.User;
import com.jp.ht.service.CartIService;
import com.jp.ht.service.CartServiceImpl;

public class cartServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      String pid= req.getParameter("pid");
	      int productId=Integer.parseInt(pid);
	      String pcount= req.getParameter("pcount");
	      int count= Integer.parseInt(pcount);
	      String price= req.getParameter("price");
	      double priced= Double.parseDouble(price);
	      
	      CartIService s=new CartServiceImpl();
	      Cart cart=new Cart();
	      cart.setProductCount(count);
	      cart.setPrice(priced);
	      cart.setProductId(productId);
	      User u=(User)req.getSession().getAttribute("userInfo");
	      cart.setUserName(u.getUserName());
	      BigDecimal decPrice=new BigDecimal(price);
	      BigDecimal decCount=new BigDecimal(pcount);
	      BigDecimal total= decCount.multiply(decPrice);
	      
	      cart.setSubTotal(total.doubleValue());
	      
	      s.saveOrUpdate(cart);
	      
	      req.getRequestDispatcher("client/cart.jsp").forward(req, resp);
	    
	}
}
