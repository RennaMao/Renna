package com.jp.ht.dao;

import java.util.List;

import com.jp.ht.entity.Classify;

public interface ClassifyIDAO {
	public List<Classify>  getByCondition(String name);
}
