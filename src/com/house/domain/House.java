package com.house.domain;

import java.util.HashSet;
import java.util.Set;
public class House implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;//房子名称
	private Integer area; //面积
	private String description; //描述
	private String district; //地区
	private String price;//价格
	private String type;//房型
	private String picture;
	private String user;//出售
	private Integer sale;//销售状态

	private Set<Message> usermessageSet = new HashSet<Message>();//留言的用户
	public House(){
		
		
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getArea() {
		return area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

	public Integer getSale() {
		return sale;
	}

	public void setSale(Integer sale) {
		this.sale = sale;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public Set<Message> getUsermessageSet() {
		return usermessageSet;
	}
	public void setUsermessageSet(Set<Message> usermessageSet) {
		this.usermessageSet = usermessageSet;
	}
	@Override
	public String toString() {
		return "House [id=" + id + ", name=" + name + ", area=" + area + ", description=" + description + ", district="
				+ district + ", price=" + price + ", type=" + type + ", picture=" + picture + ", sale=" + sale
				+ ", usermessageSet=" + usermessageSet + "]";
	}

	

}
