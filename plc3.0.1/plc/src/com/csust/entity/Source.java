package com.csust.entity;

/**
 * ��Դ��Ϣ
 * id:���
 * url:��Դ·��;
 * name:��Դ����;
 * teacherId:�ϴ���Դ������;
 * sourcetypeId:��Դ����;
 * @author Administrator
 *
 */
public class Source {
	private int id;
	private String url;
	private String name;
	private String teacherId;
	private int sourceTypeId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
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
	public int getSourceTypeId() {
		return sourceTypeId;
	}
	public void setSourceTypeId(int sourceTypeId) {
		this.sourceTypeId = sourceTypeId;
	}
	
	

}
