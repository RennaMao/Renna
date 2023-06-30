package com.jp.ht.entity;

import java.util.Date;

public class User {
	private String userName;
	private String pwd;
	private String status;
	private Date registtime;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getRegisttime() {
		return registtime;
	}
	public void setRegisttime(Date registtime) {
		this.registtime = registtime;
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", pwd=" + pwd + ", status=" + status + ", registtime=" + registtime
				+ "]";
	}
	public void set( String userName, String pwd) {
		 this.userName = userName;
	        this.pwd= pwd;
		
	}
	
	
}
