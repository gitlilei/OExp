package com.csust.entity;

/**
 * 账户:用户名,密码,密保
 * @author Administrator
 *
 */
public class User {
	private String id;
	private String password;
	private String security;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSecurity() {
		return security;
	}
	public void setSecurity(String security) {
		this.security = security;
	}
	
	

}
