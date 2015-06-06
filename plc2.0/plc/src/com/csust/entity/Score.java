package com.csust.entity;

/**
 * 分数实体;
 * 分数编号;
 * 试验项目id;
 * 实验分数;
 * 学生编号;
 * @author chenzhijun
 *
 */
public class Score {
	
	private int id;
	private int experimentId;
	private int score;
	private String studentId;
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
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
	

}
