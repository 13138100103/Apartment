package com.house.domain;


public class Message implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private House houseid;//����
	private String details;//����
	private String time;//ʱ��
	private User userid;//�û�
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
