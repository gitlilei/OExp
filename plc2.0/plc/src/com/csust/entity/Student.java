package com.csust.entity;

public class Student {
	private String stdNumber;
	private String stdName;
	private int stdMajorId;//专业名
	private String stdUserId;//账户名
	
	public String getStdNumber() {
		return stdNumber;
	}
	public void setStdNumber(String stdNumber) {
		this.stdNumber = stdNumber;
	}
	public String getStdName() {
		return stdName;
	}
	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
	public int getStdMajorId() {
		return stdMajorId;
	}
	public void setStdMajorId(int stdMajorId) {
		this.stdMajorId = stdMajorId;
	}
	public String getStdUserId() {
		return stdUserId;
	}
	public void setStdUserId(String stdUserId) {
		this.stdUserId = stdUserId;
	}
	
	

}
