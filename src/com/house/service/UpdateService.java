package com.house.service;

import java.util.List;

import com.house.domain.Message;
import com.house.domain.User;

public interface UpdateService {

	void updateuser(User user);

	void DelteMessage(Message message);


	List<Message> FindMessage(User user);
	

}
