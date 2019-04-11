package com.house.domain;


import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

@Component("user")
public class User implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private Integer id;

	private String phone;//ÊÖ»ú
	private String email;
	private String username;
	private String password;
	private Set<House> messageSet=new HashSet<House>();

	public User(){
		
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Set<House> getMessageSet() {
		return messageSet;
	}
	public void setMessageSet(Set<House> messageSet) {
		this.messageSet = messageSet;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", phone=" + phone + ", email=" + email + ", username=" + username + ", password="
				+ password + ", messageSet=" + messageSet + "]";
	}

	
}
