package com.csust.entity;

/**
 * 所学专业实体
 * @author Administrator
 *
 */
public class Major {
	private int id;//专业id号
	private String name;//专业名
	private int schoolId;//学院id
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSchoolId() {
		return schoolId;
	}
	public void setSchoolId(int schoolId) {
		this.schoolId = schoolId;
	}
	

}
