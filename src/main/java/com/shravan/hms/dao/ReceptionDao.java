package com.shravan.hms.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shravan.hms.model.Receptionist;
import com.shravan.hms.util.HibernateUtil;

public class ReceptionDao {

	public void save(Receptionist receptionist) {
		Session session = HibernateUtil.getSession();
		Transaction transaction = session.beginTransaction();

		session.save(receptionist);

		transaction.commit();
	}

	public List<Receptionist> getAllReception() {
		Session session = HibernateUtil.getSessionFactory().openSession();

		List<Receptionist> list = session.createQuery("FROM Receptionist").getResultList();

		return list;
	}

	public boolean validate(int id, String password) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Receptionist reception = null;
		
		reception = (Receptionist) session.createQuery("FROM Receptionist R WHERE R.id = :Id").setParameter("Id", id)
				.uniqueResult();

		if (reception != null && reception.getPassword().equals(password)) {
			return true;
		}

		return false;
	}

	public void delete(int recepId) {
		
		Session session = HibernateUtil.getSession();
		Transaction transaction = session.beginTransaction();
		
		session.createQuery("delete from Receptionist where id = :id").setParameter("id", recepId).executeUpdate();
		
		transaction.commit();
	}

}
