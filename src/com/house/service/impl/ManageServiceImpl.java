package com.house.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.house.dao.ContactDAO;
import com.house.dao.HouseDAO;
import com.house.dao.MessageDAO;
import com.house.dao.UserDAO;
import com.house.domain.Contact;
import com.house.domain.House;
import com.house.domain.Message;
import com.house.domain.User;
import com.house.service.ManageService;

@Service("manageService")
public class ManageServiceImpl implements ManageService{

	@Autowired
	@Qualifier("userDAO")
	private UserDAO UserDAO;
	
	@Autowired
	private HouseDAO HouseDAO;
	
	@Autowired
	private MessageDAO MessageDAO;
	
	@Autowired
	private ContactDAO ContactDAO;
	/*
	 * 寻找所有用户
	 */
	@Override
	public List<User> FindUserAll() { 
		return UserDAO.FindAll();
	}
	/*
	 * 寻找所有房子
	 */
	@Override
	public List<House> FindHouseAll() { 
		return HouseDAO.queryAll();
	}
	/*
	 * 删除指定用户
	 */
	@Override
	public void DelteUser(User user) {
		UserDAO.DeleteUser(user);
	}

	/*
	 * 删除指定房子
	 */
	@Override
	public void DelteHouse(House house) {
		HouseDAO.DeleteHouse(house);
		
	}
	/*
	 * 显示所有回复
	 */
	@Override
	public List<Message> FindMessageAll() {
		return MessageDAO.FindMessageAll();
	}
	/*
	 * 删除指定回复
	 */
	@Override
	public void DelteMessage(Message message) {
		MessageDAO.DelteMessage(message);
	}
	/*
	 * 保存新房
	 */
	@Override
	public void UpdateHouse(House house) {
		HouseDAO.UpdateHouse(house);
		
	}
	/*
	 * 显示所有留言
	 */
	@Override
	public List<Contact> AllContact() {
		return ContactDAO.AllContact();
	}
	/*
	 * 删除指定留言
	 */
	@Override
	public void DelteContact(Contact contact) {
		ContactDAO.DeleteContact(contact);
		
	}


	

}
