package com.shravan.hms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Patient;

/**
 * Servlet implementation class PatientLoginController
 */
public class PatientLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDao patientDao;

	@Override
	public void init() throws ServletException {
		patientDao = new PatientDao();
	}

	public PatientLoginController() {
		super();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			authenticate(request, response);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		HttpSession session = request.getSession();

		if (session.getAttribute("LOGIN") == null) {
			if (patientDao.validate(email, password)) {
				session.setAttribute("LOGIN", "PATIENT");
				session.setAttribute("patientEmail", email);

				Patient patient = patientDao.getPatient(email);

				session.setAttribute("patientId", patient.getMobileNumber());

				request.getRequestDispatcher("patient-dashboard.jsp").forward(request, response);

			} else {
				request.setAttribute("message", "incorrect patient email or password...");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				;
			}
		} 
			  else {
				  request.setAttribute("message", "you are already logged in this current machine.");
				  request.getRequestDispatcher("login.jsp").forward(request, response);
			  }
			 
	}

}
