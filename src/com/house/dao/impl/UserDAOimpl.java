package com.house.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.house.dao.UserDAO;
import com.house.domain.House;
import com.house.domain.User;
import com.house.utils.HibernateUtil;


@Repository("userDAO")
public class UserDAOimpl implements UserDAO {

	@Override
	public User FindUser(User user) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query1=s.createQuery("from User where username=:username and password=:password");
		query1.setParameter("username", user.getUsername());
		query1.setParameter("password", user.getPassword());
		user= (User) query1.uniqueResult();
		tx.commit();
		s.close();
		return user;
	}

	@Override
	public User Findusername(User user) {
		
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query1=s.createQuery("from User where username=:username");
		query1.setParameter("username", user.getUsername());
		user= (User) query1.uniqueResult();
		tx.commit();
		s.close();
		return user;
	}

	@Override
	public void saveUser(User user) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		try {
			s.save(user);
		} catch (Exception e) {
			tx.rollback();
		}finally {	
			tx.commit();
			s.close();
		}
	}

	@Override
	public void updateuser(User user) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		try {
			 s.update(user);
		} catch (Exception e) {
			tx.rollback();
		}finally {	
			tx.commit();
			s.close();
		}
	}

	@Override
	public List<User> FindAll() {
		
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query=s.createQuery("from User");
		List<User> list=query.list();
		tx.commit();
		s.close();
		return list;
	}

	@Override
	public void DeleteUser(User user) {
		
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		s.delete(user);
		tx.commit();
		s.close();
	}


}
