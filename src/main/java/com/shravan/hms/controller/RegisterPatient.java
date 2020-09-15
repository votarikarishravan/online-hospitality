package com.shravan.hms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Patient;
import com.shravan.hms.model.PatientProfile;

/**
 * Servlet implementation class RegisterPatient
 */
public class RegisterPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDao patientDao;

	@Override
	public void init() throws ServletException {
		patientDao = new PatientDao();
	}

	public RegisterPatient() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		register(request, response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String name = request.getParameter("name");
		long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Patient patient = new Patient();
		PatientProfile pProfile = new PatientProfile();

		patient.setName(name);
		patient.setMobileNumber(mobileNumber);
		patient.setEmail(email);
		patient.setPassword(password);

		if (patientDao.getPatientById(mobileNumber) == null) {
			
			patient.setPatientProfile(pProfile);
			patientDao.savePatient(patient);
			
			request.setAttribute("image", "https://img.icons8.com/color/144/000000/ok--v1.png");
			request.setAttribute("header", "Registered Successfully!");
			request.setAttribute("message",
					" you are successfully registered now login and book appointments.");
			request.setAttribute("href", "login.jsp");
			request.setAttribute("action", "login now");
			request.getRequestDispatcher("registration-success.jsp").forward(request, response);

		} else {
			request.setAttribute("image", "https://img.icons8.com/fluent/144/000000/cancel.png");
			request.setAttribute("header", "Your Registration Cancelled.");
			request.setAttribute("message",
					" you might already have registered with your mobile number");
			request.setAttribute("href", "register.jsp");
			request.setAttribute("action", "try again");
			request.getRequestDispatcher("registration-success.jsp").forward(request, response);
		}
		
	}

}
