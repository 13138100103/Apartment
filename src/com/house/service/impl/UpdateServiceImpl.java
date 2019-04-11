package com.house.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.house.dao.MessageDAO;
import com.house.dao.UserDAO;
import com.house.domain.Message;
import com.house.domain.User;
import com.house.service.UpdateService;
@Service("updateService")
public class UpdateServiceImpl implements UpdateService {

	
	@Autowired
	@Qualifier("userDAO")
	private UserDAO UserDAO;
	@Autowired
	@Qualifier("user")
	private User u;
	
	@Autowired
	private MessageDAO MessageDAO;
	
	/*
	 * �����û�
	 */
	@Override
	public void updateuser(User user) {
		UserDAO.updateuser(user);
		
	}
	/*
	 * ɾ��ָ������
	 */
	@Override
	public void DelteMessage(Message message) {
		MessageDAO.DelteMessage(message);
	}


	/*
	 * �����û�������
	 */
	@Override
	public List<Message> FindMessage(User user) {
		return MessageDAO.FindMessage(user);
	}

}
