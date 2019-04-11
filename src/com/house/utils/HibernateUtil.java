package com.house.utils;

import org.hibernate.cfg.Configuration;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


/**
 * 抽取Hibernate的工具类
 * @author zhoujiahai
 * 
 * 单例模式，只能有一个session
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
			throw new ExceptionInInitializerError("初始化Session错误，请检查配置文件");
		}
	}
	
	/**
	 *获取一个新的Session对象
	 * @author zhoujiahai
	 *
	 */
	public static Session openSession()
	{
		return factory.openSession();
	}
	
	
	/* 从当前线程获取一个对象 */
	public static Session getCurrentSession(){
		return factory.getCurrentSession();//只有配置 把seesion和线程绑定了之后才能使用，否则返回值是Null
	}
	
}
