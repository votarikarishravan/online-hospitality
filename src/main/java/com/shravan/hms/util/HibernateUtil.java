package com.shravan.hms.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	 private static SessionFactory sessionFactory;

	    public static SessionFactory getSessionFactory() {
	        if (sessionFactory == null) {
	        	sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	        }
	        return sessionFactory;   
	    }
	    
	    public static void closeSessionFactory() {
	        if (sessionFactory != null) {
	            sessionFactory.close();
	        }
	    }
	    public static Session getSession() {
			return getSessionFactory().openSession(); 
		}
	    public static void closeSession() {
			getSession().close();
		}
}
