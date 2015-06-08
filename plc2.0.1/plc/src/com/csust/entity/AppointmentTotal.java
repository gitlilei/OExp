package com.csust.entity;


/**
 * 预约总表:记录每门试验预约的总人数
 * @author chenzhijun
 *
 */
public class AppointmentTotal {
	private int id;
	private int experimentId;
	private int totalPeopel;
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
	public int getTotalPeopel() {
		return totalPeopel;
	}
	public void setTotalPeopel(int totalPeopel) {
		this.totalPeopel = totalPeopel;
	}
	

}
