package com.csust.entity;



public class Forum {
	private int f_id;
	private String f_title;
	private String f_content;
	private String f_userid;
	private String f_publishdate;
	private String f_type;
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getF_content() {
		return f_content;
	}
	public void setF_content(String f_content) {
		this.f_content = f_content;
	}
	public String getF_userid() {
		return f_userid;
	}
	public void setF_userid(String f_userid) {
		this.f_userid = f_userid;
	}
	public String getF_publishdate() {
		return f_publishdate;
	}
	public void setF_publishdate(String f_publishdate) {
		this.f_publishdate = f_publishdate;
	}
	public String getF_type() {
		return f_type;
	}
	public void setF_type(String f_type) {
		this.f_type = f_type;
	}
	public Forum(String f_title, String f_content, String f_userid,
			String f_publishdate, String f_type) {
		super();
		this.f_title = f_title;
		this.f_content = f_content;
		this.f_userid = f_userid;
		this.f_publishdate = f_publishdate;
		this.f_type = f_type;
	}
	public Forum() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
