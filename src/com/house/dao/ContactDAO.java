package com.house.dao;

import java.util.List;

import com.house.domain.Contact;

public interface ContactDAO {

	List<Contact> AllContact();

	void DeleteContact(Contact contact);
}
