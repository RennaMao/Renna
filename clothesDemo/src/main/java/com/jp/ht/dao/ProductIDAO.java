package com.jp.ht.dao;

import java.util.List;

import com.jp.ht.entity.Product;

public interface ProductIDAO {
	public List<Product> getPaging(int pageSize,int offset);
    public int getCount();
    public List<Product> getByClassName(String className,int pageSize,int offset);//如果搜索出来的值很多的话，要加上面的int pagesize来给这个结果分页
    public int getCountByClassName(String className);
    public Product getByID(Integer id);
    
    public List<Product> getProsByUserName(String userName);
}
