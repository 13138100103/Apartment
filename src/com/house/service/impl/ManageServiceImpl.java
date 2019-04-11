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
	 * Ѱ�������û�
	 */
	@Override
	public List<User> FindUserAll() { 
		return UserDAO.FindAll();
	}
	/*
	 * Ѱ�����з���
	 */
	@Override
	public List<House> FindHouseAll() { 
		return HouseDAO.queryAll();
	}
	/*
	 * ɾ��ָ���û�
	 */
	@Override
	public void DelteUser(User user) {
		UserDAO.DeleteUser(user);
	}

	/*
	 * ɾ��ָ������
	 */
	@Override
	public void DelteHouse(House house) {
		HouseDAO.DeleteHouse(house);
		
	}
	/*
	 * ��ʾ���лظ�
	 */
	@Override
	public List<Message> FindMessageAll() {
		return MessageDAO.FindMessageAll();
	}
	/*
	 * ɾ��ָ���ظ�
	 */
	@Override
	public void DelteMessage(Message message) {
		MessageDAO.DelteMessage(message);
	}
	/*
	 * �����·�
	 */
	@Override
	public void UpdateHouse(House house) {
		HouseDAO.UpdateHouse(house);
		
	}
	/*
	 * ��ʾ��������
	 */
	@Override
	public List<Contact> AllContact() {
		return ContactDAO.AllContact();
	}
	/*
	 * ɾ��ָ������
	 */
	@Override
	public void DelteContact(Contact contact) {
		ContactDAO.DeleteContact(contact);
		
	}


	

}
