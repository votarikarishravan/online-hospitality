package com.shravan.hms.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shravan.hms.model.Appointment;
import com.shravan.hms.util.HibernateUtil;

public class AppointmentDao {

	public void save(Appointment appointment) {
		Session session = HibernateUtil.getSession();
		Transaction transaction = session.beginTransaction();

		session.save(appointment);

		transaction.commit();
	}

	public List<Appointment> getAllAppointment() {
		Session session = HibernateUtil.getSessionFactory().openSession();

		List<Appointment> list = session.createQuery("FROM Appointment").getResultList();

		return list;
	}

	public List<Appointment> getCurrentDayAppointment() {
		Session session = HibernateUtil.getSessionFactory().openSession();

		List<Appointment> list = session.createQuery("FROM Appointment A WHERE A.bookingDate =CURRENT_DATE")
				.getResultList();

		return list;
	}

	public List<Appointment> getAllAppointmentByDoctorId(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		List<Appointment> list = session.createQuery("FROM Appointment A WHERE A.doctorId=:dId").setParameter("dId", id)
				.getResultList();

		return list;
	}

	public Appointment getAppointmentById(int appoid) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Appointment appointment = (Appointment) session.createQuery("FROM Appointment A WHERE A.id =:appId")
				.setParameter("appId", appoid).uniqueResult();

		return appointment;
	}

	public void update(Appointment appointment) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.update(appointment);
		transaction.commit();
	}
	
	public List<Appointment> getAppointmentByPatientId(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		List<Appointment> list = session.createQuery("FROM Appointment A WHERE A.patientId =:pId")
				.setParameter("pId", id).getResultList();
		
		return list;
	}

}
