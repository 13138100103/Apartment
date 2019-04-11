package com.house.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.house.domain.User;

public interface UserDAO {
	User FindUser(User user);

	User Findusername(User user);

	void saveUser(User user);

	void updateuser(User user);

	List<User> FindAll();

	void DeleteUser(User user);

}
