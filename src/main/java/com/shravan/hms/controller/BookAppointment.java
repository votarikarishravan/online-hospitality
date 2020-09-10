package com.shravan.hms.controller;

import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.AppointmentDao;
import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Appointment;

/**
 * Servlet implementation class BookAppointment
 */
public class BookAppointment extends HttpServlet {
	private AppointmentDao dao;
	private PatientDao pDao;
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		dao = new AppointmentDao();
		pDao = new PatientDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int doctorId = Integer.parseInt(request.getParameter("id"));
		Long patientMob = Long.parseLong(request.getParameter("mobile"));
		String timeSlot = request.getParameter("time");
		String date = request.getParameter("date");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date parse;
		if (pDao.getPatientById(patientMob) != null) {
			try {
				parse = formatter.parse(date);
				Appointment appointment = new Appointment();
				appointment.setDoctorId(doctorId);
				appointment.setPatientId(patientMob);
				appointment.setBookingDate(parse);
				appointment.setTimeSlot(timeSlot);
				appointment.setStatus("waiting");
				appointment.setCreatedOn(new Date());

				dao.save(appointment);
				request.setAttribute("image", "https://img.icons8.com/color/144/000000/ok--v1.png");
				request.setAttribute("header", "Appointment booked Successfully!");
				request.setAttribute("message",
						" your appointment now in waiting. please check your account for updates on your appointment.");
				request.getRequestDispatcher("booking-success.jsp").forward(request, response);

			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			request.setAttribute("image", "https://img.icons8.com/fluent/144/000000/cancel.png");
			request.setAttribute("header", "Appointment booked not Successfully!");
			request.setAttribute("message", " your are not registered patient please register before book appointment");
			request.getRequestDispatcher("booking-success.jsp").forward(request, response);

		}

	}

}
