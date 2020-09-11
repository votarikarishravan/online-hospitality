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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		register(request, response);
	}
	
	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      
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
        try {
        patient.setPatientProfile(pProfile);
        
        patientDao.savePatient(patient);
        }catch ( Exception e) {
        	System.out.println("LOG : ----------------------");
			e.printStackTrace();
			request.setAttribute("Emessage", "you are already registered here");
			request.getRequestDispatcher("register.jsp").forward(request, response);;
		} 
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }

}
