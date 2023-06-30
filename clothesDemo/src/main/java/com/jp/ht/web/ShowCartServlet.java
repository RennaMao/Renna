package com.jp.ht.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jp.ht.entity.Product;
import com.jp.ht.entity.User;
import com.jp.ht.service.ProductIService;
import com.jp.ht.service.ProductServiceImpl;

public class ShowCartServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User u=(User)req.getSession().getAttribute("userInfo");
		 String username=u.getUserName();
	     
		 ProductIService s=new ProductServiceImpl();
		 List<Product>  list=s.getProsByUserName(username);

		 JSONArray jsonArray = new JSONArray();
	 		for (Product pro : list) {
	 			JSONObject jsonObj = new JSONObject();
	 			jsonObj.put("proLogo", pro.getProductLogo());
				jsonObj.put("proName", pro.getProductName());
				jsonObj.put("proId", pro.getId());
				jsonObj.put("proPrice", pro.getProductPrice());
				jsonObj.put("buyCount", pro.getCount());
				//jsonObj.put("subTotal", pro.getSubTotal());
	 			jsonArray.add(jsonObj);
	 		}
	 		
	 		
	 		PrintWriter out = resp.getWriter();
			out.print(jsonArray);
			out.flush();
			out.close();
}
}
