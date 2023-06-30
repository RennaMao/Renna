package com.jp.ht.service;

import java.util.List;

import com.jp.ht.dao.ProductIDAO;
import com.jp.ht.dao.ProductImplDAO;
import com.jp.ht.entity.Product;

public class ProductServiceImpl implements ProductIService{
	 ProductIDAO pdao=new ProductImplDAO();
		@Override
		public List<Product> getPaging(int pageSize, int offset) {
			
			return pdao.getPaging(pageSize,offset);
		}

		@Override
		public int getCount() {
		
			return pdao.getCount();
		}

		@Override
		public List<Product> getByClassName(String className, int pageSize, int offset) {
			return pdao.getByClassName(className,pageSize,offset);
		}

		@Override
		public int getCountByClassName(String className) {
			
			return pdao.getCountByClassName(className);
		}

		@Override
		public Product getByID(Integer id) {
		
			return pdao.getByID(id);
		}

		@Override
		public List<Product> getProsByUserName(String userName) {
			
			return pdao.getProsByUserName(userName);
		}

}
