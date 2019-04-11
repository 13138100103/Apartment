package com.house.service;

import com.house.domain.User;

public interface RegisterService {

	  public boolean findusername(User user);

	public void saveUser(User user);
}
