package com.csust.entity;

/**
 * ʵ���
 * @author chenzhijun
 *
 */
public class Experiment {
	private int id;
	private String name;
	private String teacherId;//ָ����ʦid��
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
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	
	

}
