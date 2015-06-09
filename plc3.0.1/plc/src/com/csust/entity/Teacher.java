package com.csust.entity;
/**
 * 老师实体类;
 * id:编号;
 * name:姓名;
 * gender:性别;
 * roleId:角色id;
 * majorId:专业id;
 * userId:账户名.
 * @author Administrator
 *
 */
public class Teacher {
	private String id;
	private String name;
	private String gender;
	private int roleId;
	private int majorId;
	private String userId;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public int getMajorId() {
		return majorId;
	}
	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	

}
