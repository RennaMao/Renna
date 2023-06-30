package com.jp.ht.entity;

import java.io.Serializable;

public class Classify implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
     private String className;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	@Override
	public String toString() {
		return "Classify [id=" + id + ", className=" + className + "]";
	}
     
}


