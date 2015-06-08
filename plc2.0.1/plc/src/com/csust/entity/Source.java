package com.csust.entity;

/**
 * 资源信息
 * id:编号
 * url:资源路径;
 * name:资源名称;
 * teacherId:上传资源人名称;
 * sourcetypeId:资源类型;
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
