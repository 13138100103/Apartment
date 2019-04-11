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
	 * true:查到了，用户已经存在
	 * false:没查到。可以创建
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
	 * 保存新用户
	 */
	@Override
	public void saveUser(User user) {
		UserDAO.saveUser(user);
		
	}

}
