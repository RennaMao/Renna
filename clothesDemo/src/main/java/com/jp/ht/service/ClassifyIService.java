package com.jp.ht.service;

import java.util.List;

import com.jp.ht.entity.Classify;

public interface ClassifyIService {
	public List<Classify>  getByCondition(String name);
}
