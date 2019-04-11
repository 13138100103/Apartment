package com.house.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.house.dao.MessageDAO;
import com.house.domain.House;
import com.house.domain.Message;
import com.house.domain.User;
import com.house.utils.HibernateUtil;
import com.house.domain.Contact;
@Repository("messageDAO")
public class MessageDAOImpl implements MessageDAO {

	@Override
	public void reply(Message message) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		s.merge(message);
		tx.commit();
		s.close();
	}

	@Override
	public void Contact(Contact contact) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		s.save(contact);
		tx.commit();
		s.close();
	}
	
	@Override
	public List<Message> FindMessageAll() {
		
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query=s.createQuery("from Message");
		List<Message> list=query.list();
		tx.commit();
		s.close();
		return list;
	}

	@Override
	public void DelteMessage(Message message) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		s.delete(message);
		tx.commit();
		s.close();	
	}

	@Override
	public List<Message> FindMessage(User user) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query=s.createQuery("from Message where userid=:userid");
		query.setParameter("userid", user);
		List<Message> list=query.list();
		tx.commit();
		s.close();
		return list;
	}


}
