package com.house.service;

import java.util.List;

import com.house.domain.Contact;
import com.house.domain.House;
import com.house.domain.Message;
import com.house.domain.User;


public interface ManageService {

	List<User> FindUserAll();
	List<House> FindHouseAll();
	void DelteUser(User user);
	void DelteHouse(House house);
	List<Message> FindMessageAll();
	void DelteMessage(Message message);
	void UpdateHouse(House house);
	List<Contact> AllContact();
	void DelteContact(Contact contact);

}
