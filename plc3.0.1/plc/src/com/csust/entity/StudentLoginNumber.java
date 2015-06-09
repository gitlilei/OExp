package com.csust.entity;
/**
 * 记录学生登录次数
 * @author chenzhijun
 *
 */
public class StudentLoginNumber {
	private int id;
	private int number;//登陆次数
	private int studentId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	
	

}
