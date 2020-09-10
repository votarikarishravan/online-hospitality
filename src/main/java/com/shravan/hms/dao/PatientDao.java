package com.shravan.hms.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shravan.hms.model.Patient;
import com.shravan.hms.util.HibernateUtil;

public class PatientDao {

	public void savePatient(Patient patient) {

		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			// start a transaction

			transaction = session.beginTransaction();

			// save the student object
			session.save(patient);

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

		Patient patient = null;
		Transaction transaction = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			transaction = session.beginTransaction();
			// get an patient object
			patient = (Patient) session.createQuery("FROM Patient U WHERE U.email = :emailId")
					.setParameter("emailId", email).uniqueResult();

			if (patient != null && patient.getPassword().equals(password)) {
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

	public Patient getPatient(String email) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Patient patient = (Patient) session.createQuery("FROM Patient U WHERE U.email = :emailId")
				.setParameter("emailId", email).uniqueResult();

		return patient;
	}
	public Patient getPatientById(Long mobile) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Patient patient = session.get(Patient.class, mobile);

		return patient;
	}
	
	public List<Patient> getAllPatient() {
		Session session = HibernateUtil.getSessionFactory().openSession();

	  List<Patient> list = session.createQuery("FROM Patient").getResultList();
		
		return list;
	}

	public void updatePatient(Patient patient) {
		Transaction transaction = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			transaction = session.beginTransaction();

			session.update(patient);

			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
}
