package com.csust.entity;

/**
 * Ô¤Ô¼×´¿ö:±àºÅ,ÊÔÑéid,×´Ì¬Ãû;
 * @author chenzhijun
 *
 */
public class AppointmentStatus {
	private int id;
	private int appointmentId;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	

}
