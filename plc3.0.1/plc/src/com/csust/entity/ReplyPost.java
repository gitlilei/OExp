package com.csust.entity;

public class ReplyPost {
	private int fr_id;
	private int fr_forumid;
	private String fr_reply;
	private String fr_replyuserid;
	private String fr_date;
	
	public ReplyPost(int fr_forumid, String fr_reply, String fr_replyuserid,
			String fr_date) {
		super();
		this.fr_forumid = fr_forumid;
		this.fr_reply = fr_reply;
		this.fr_replyuserid = fr_replyuserid;
		this.fr_date = fr_date;
	}
	public ReplyPost() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getFr_id() {
		return fr_id;
	}
	public void setFr_id(int fr_id) {
		this.fr_id = fr_id;
	}
	public int getFr_forumid() {
		return fr_forumid;
	}
	public void setFr_forumid(int fr_forumid) {
		this.fr_forumid = fr_forumid;
	}
	public String getFr_reply() {
		return fr_reply;
	}
	public void setFr_reply(String fr_reply) {
		this.fr_reply = fr_reply;
	}
	public String getFr_replyuserid() {
		return fr_replyuserid;
	}
	public void setFr_replyuserid(String fr_replyuserid) {
		this.fr_replyuserid = fr_replyuserid;
	}
	public String getFr_date() {
		return fr_date;
	}
	public void setFr_date(String fr_date) {
		this.fr_date = fr_date;
	}
	
}
