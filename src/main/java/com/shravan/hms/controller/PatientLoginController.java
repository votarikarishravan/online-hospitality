package com.shravan.hms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            authenticate(request, response);
        } catch (Exception e) {
       
            e.printStackTrace();
        }
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if (patientDao.validate(email, password)) {
        	
        	HttpSession session = request.getSession();
        	session.setAttribute("patientEmail", email);
        	
        	Patient patient = patientDao.getPatient(email);
        	
        	session.setAttribute("patientId", patient.getMobileNumber());
          	session.setAttribute("patientFullName", patient.getName());
          	session.setAttribute("patientFirstName", patient.getPatientProfile().getPatientFirstName());
          	session.setAttribute("patientLastName", patient.getPatientProfile().getPatientLastName());
          	session.setAttribute("patientDob", patient.getPatientProfile().getPatientDob());
          	session.setAttribute("patientBloodGroup", patient.getPatientProfile().getPatientBloodGroup());
          	session.setAttribute("patientMobile", patient.getMobileNumber());
          	session.setAttribute("patientAddress", patient.getPatientProfile().getPatientAddress());
          	session.setAttribute("patientCity", patient.getPatientProfile().getPatientCity());
          	session.setAttribute("patientState", patient.getPatientProfile().getPatientState());
          	session.setAttribute("patientZip", patient.getPatientProfile().getPatientZip());
          	session.setAttribute("patientCountry", patient.getPatientProfile().getPatientCountry());
        	
        	RequestDispatcher dispatcher = request.getRequestDispatcher("patient-dashboard.jsp");
            try {
				dispatcher.forward(request, response);
			} catch (ServletException | IOException e) {
		
				e.printStackTrace();
			}
        } else {
        	response.sendRedirect("login.jsp");
        	throw new Exception("Login not successful..");
        }
    }
	

}
