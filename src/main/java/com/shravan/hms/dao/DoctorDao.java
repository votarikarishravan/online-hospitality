package com.shravan.hms.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shravan.hms.model.Doctor;
import com.shravan.hms.util.HibernateUtil;

public class DoctorDao {

	public void saveDoctor(Doctor doctor) {

		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			// start a transaction

			transaction = session.beginTransaction();

			// save the student object
			session.save(doctor);

			transaction.commit();

			// commit transaction

		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}

	}

	public boolean validate(String email, String password) {

		Doctor doctor = null;
		Transaction transaction = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			transaction = session.beginTransaction();
			// get an Doctor object
			doctor = (Doctor) session.createQuery("FROM Doctor U WHERE U.email = :emailId")
					.setParameter("emailId", email).uniqueResult();

			if (doctor != null && doctor.getPassword().equals(password)) {
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
	
	public boolean validate(int id, String password) {

		Doctor doctor = null;
		Transaction transaction = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			transaction = session.beginTransaction();
			// get an Doctor object
			doctor = (Doctor) session.createQuery("FROM Doctor U WHERE U.id = :Id")
					.setParameter("Id", id).uniqueResult();

			if (doctor != null && doctor.getPassword().equals(password)) {
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

	public Doctor getDoctor(String email) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Doctor doctor = (Doctor) session.createQuery("FROM Doctor U WHERE U.email = :emailId")
				.setParameter("emailId", email).uniqueResult();

		return doctor;
	}
public Doctor getDoctorById(int dId) {
	Session session = HibernateUtil.getSessionFactory().openSession();

	Doctor doctor = (Doctor) session.createQuery("FROM Doctor U WHERE U.id = :dId")
			.setParameter("dId", dId).uniqueResult();

	return doctor;
}

	public void updateDoctor(Doctor doctor) {
		Transaction transaction = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			transaction = session.beginTransaction();

			session.update(doctor);

			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	public List<Doctor> getAllDoctor() {
		Session session = HibernateUtil.getSessionFactory().openSession();

	  List<Doctor> list = session.createQuery("FROM Doctor").getResultList();
		
		return list;
	}

	public void delete(int docId) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.createQuery("delete from Doctor where id = :id").setParameter("id", docId).executeUpdate();
		transaction.commit();
	}
	
}
