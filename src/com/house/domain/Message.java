package com.house.domain;


public class Message implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private House houseid;//房子
	private String details;//内容
	private String time;//时间
	private User userid;//用户
	public Message(){
		
	}
	public int getId() {
		return id;
	}
	public House getHouseid() {
		return houseid;
	}
	public void setHouseid(House houseid) {
		this.houseid = houseid;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public User getUserid() {
		return userid;
	}
	public void setUserid(User userid) {
		this.userid = userid;
	}


}
