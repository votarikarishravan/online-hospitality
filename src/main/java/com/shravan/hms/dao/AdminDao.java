package com.shravan.hms.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shravan.hms.model.Admin;
import com.shravan.hms.util.HibernateUtil;

public class AdminDao {
	
	public static Admin getAdmin() {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Admin admin = session.get(Admin.class,1995);

		return admin;
	}

	
	
	public boolean validate(String username,String password) {
		Admin admin = null;

		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			transaction = session.beginTransaction();
			admin = session.get(Admin.class, 1995);

			if (admin != null && admin.getPassword().equals(password)) {
				return true;
			}

			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}

		return false;
	}

	public void saveAdmin(Admin admin) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			// start a transaction

			transaction = session.beginTransaction();

			// save the student object
			session.save(admin);

			transaction.commit();

			// commit transaction

		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	



	public static void updateAdmin(Admin admin) {
		
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			// start a transaction

			transaction = session.beginTransaction();

			// save the student object
			session.update(admin);

			transaction.commit();

			// commit transaction

		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		
	}
	

}
