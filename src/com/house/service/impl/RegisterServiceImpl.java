package com.house.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.house.dao.UserDAO;
import com.house.domain.User;

import com.house.service.RegisterService;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {


	@Autowired
	@Qualifier("userDAO")
	private UserDAO UserDAO;
	@Autowired
	@Qualifier("user")
	private User u;
	

	/**
	 * true:�鵽�ˣ��û��Ѿ�����
	 * false:û�鵽�����Դ���
	 */
	@Override
	public boolean findusername(User user) {

		if(UserDAO.Findusername(user)!=null)   
		{
		    return true;
		}
		else {
			return false;
		}
		
	}
	/*
	 * �������û�
	 */
	@Override
	public void saveUser(User user) {
		UserDAO.saveUser(user);
		
	}

}
