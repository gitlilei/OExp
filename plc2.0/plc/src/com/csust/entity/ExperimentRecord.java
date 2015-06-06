package com.csust.entity;

import java.util.Date;

/**
 * 试验记录实体类
 * @author chenzhijun
 *
 */
public class ExperimentRecord {
	private int id;
	private String code;
	private String result;
	private int studentId;
	private int experimentId;
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getExperimentId() {
		return experimentId;
	}
	public void setExperimentId(int experimentId) {
		this.experimentId = experimentId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
