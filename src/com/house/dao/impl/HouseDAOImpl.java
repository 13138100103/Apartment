package com.house.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.house.dao.HouseDAO;
import com.house.domain.House;
import com.house.utils.HibernateUtil;

@Repository("HouseDAO")
public class HouseDAOImpl implements HouseDAO{

	@Override
	public List<House> queryAll() {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query=s.createQuery("from House");
		List<House> list=query.list();
		tx.commit();
		s.close();
		return list;
	}

	@Override
	public House querySingle(Integer id) {
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		Query query=s.createQuery("from House where id=:id");
		query.setParameter("id", id);
		House house=(House) query.uniqueResult();
		tx.commit();
		s.close();
		return house;
	}

	@Override
	public void DeleteHouse(House house) {
		
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		s.delete(house);
		tx.commit();
		s.close();
	}

	@Override
	public void UpdateHouse(House house) {
		
		Session s = HibernateUtil.getCurrentSession();
		Transaction tx=s.beginTransaction();
		try {
			s.merge(house);
		} catch (Exception e) {
			tx.rollback();
		}finally {	
			tx.commit();
			s.close();
		}
		
	}



}
