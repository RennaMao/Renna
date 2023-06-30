package com.jp.ht.service;

import java.util.List;

import com.jp.ht.dao.ClassifyIDAO;
import com.jp.ht.dao.ClassifyImplDAO;
import com.jp.ht.entity.Classify;

public class ClassifyServiceImpl implements ClassifyIService{
	ClassifyIDAO dao=new ClassifyImplDAO();
	@Override
	public List<Classify> getByCondition(String name) {
		
		return dao.getByCondition(name);
	}

}
