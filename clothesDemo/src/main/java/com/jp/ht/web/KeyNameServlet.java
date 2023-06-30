package com.jp.ht.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.alibaba.fastjson.JSON;
import com.jp.ht.entity.Classify;
import com.jp.ht.service.ClassifyIService;
import com.jp.ht.service.ClassifyServiceImpl;

public class KeyNameServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("keyName");
		if(StringUtils.isNotBlank(name)) {
			ClassifyIService s=new ClassifyServiceImpl();
			List<Classify> l=s.getByCondition(name);
			String datas=JSON.toJSONString(l);
			System.out.println(datas);
			resp.getWriter().write(datas);
			resp.getWriter().flush();
			resp.getWriter().close();
		}
		
	}


}
