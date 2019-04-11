package com.house.utils;

import org.hibernate.cfg.Configuration;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


/**
 * ��ȡHibernate�Ĺ�����
 * @author zhoujiahai
 * 
 * ����ģʽ��ֻ����һ��session
 *
 */
public class HibernateUtil {
	private static SessionFactory factory;
	
	static {
		try {
			Configuration cfg = new Configuration();
			cfg.configure();
			factory = cfg.buildSessionFactory();
		} catch (ExceptionInInitializerError e) {
			// TODO: handle exception
			throw new ExceptionInInitializerError("��ʼ��Session�������������ļ�");
		}
	}
	
	/**
	 *��ȡһ���µ�Session����
	 * @author zhoujiahai
	 *
	 */
	public static Session openSession()
	{
		return factory.openSession();
	}
	
	
	/* �ӵ�ǰ�̻߳�ȡһ������ */
	public static Session getCurrentSession(){
		return factory.getCurrentSession();//ֻ������ ��seesion���̰߳���֮�����ʹ�ã����򷵻�ֵ��Null
	}
	
}
