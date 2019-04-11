package com.house.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.house.dao.UserDAO;
import com.house.domain.User;
import com.house.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {


	@Autowired
	@Qualifier("userDAO")
	private UserDAO UserDAO;
	@Autowired
	@Qualifier("user")
	private User u;
	/*
	 * —∞’“”√ªß
	 */
	@Override
	public User findUser(User user) {
		u=UserDAO.FindUser(user);
		return u;
	}

}
