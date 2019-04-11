package com.house.dao;

import java.util.List;

import com.house.domain.House;
import com.house.domain.Message;
import com.house.domain.User;
import com.house.domain.Contact;
public interface MessageDAO {

	void reply(Message message);

	List<Message> FindMessageAll();

	void DelteMessage(Message message);

	List<Message> FindMessage(User user);
	
	void Contact(Contact contact);
}
