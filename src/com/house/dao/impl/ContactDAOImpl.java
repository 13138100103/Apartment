package com.house.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.house.dao.ContactDAO;
import com.house.domain.Contact;
import com.house.utils.HibernateUtil;

@Repository("contactDAO")
public class ContactDAOImpl implements ContactDAO{

	@Override
	public List<Contact> AllContact() {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query=s.createQuery("from Contact");
		List<Contact> list=query.list();
		tx.commit();
		s.close();
		return list;
		
	}


	@Override
	public void DeleteContact(Contact contact) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		s.delete(contact);
		tx.commit();
		s.close();	
		
	}

}
