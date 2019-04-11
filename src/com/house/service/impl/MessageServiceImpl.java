package com.house.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.house.domain.Contact;
import com.house.dao.MessageDAO;
import com.house.domain.Message;
import com.house.service.MessageService;
@Service("messageService")
public class MessageServiceImpl implements MessageService {

	@Autowired
	@Qualifier("messageDAO")
	private MessageDAO MessageDAO;
	/*
	 * �ظ�����
	 */
	@Override
	public void reply(Message message) {
		
		MessageDAO.reply(message);
	}
	/*
	 * ��ϵ��վ��Ա
	 */
	@Override
	public void Contact(Contact contact) {
		
		MessageDAO.Contact(contact);
	}

}
