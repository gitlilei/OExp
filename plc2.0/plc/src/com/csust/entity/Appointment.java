package com.csust.entity;

import java.util.Date;

/**
 * 预约实验实体
 * @author chenzhijun
 *
 */
public class Appointment {
	private int id;
	private int experimentId;
	private int studentId;
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getExperimentId() {
		return experimentId;
	}
	public void setExperimentId(int experimentId) {
		this.experimentId = experimentId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	

}
