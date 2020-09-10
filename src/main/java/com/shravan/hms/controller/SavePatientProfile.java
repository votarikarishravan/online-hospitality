package com.shravan.hms.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Patient;
import com.shravan.hms.util.HibernateUtil;

/**
 * Servlet implementation class SavePatientProfile
 */
@MultipartConfig
public class SavePatientProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDao patientDao;
	
	@Override
	public void init() throws ServletException {
		patientDao = new PatientDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SavePatientProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String pSessionEmail = (String) session.getAttribute("patientEmail");
		
		Part part = request.getPart("patientImage");
		InputStream inputStream = part.getInputStream();
		
		byte[] pImage = new byte[inputStream.available()];
		String pFirstName = request.getParameter("patientFirstName");
		String pLastName = request.getParameter("patientLastName");
		
		String pDob = request.getParameter("patientDob");
		 
		String pBloodGroup = request.getParameter("patientBloodGroup");
		
		String pAddress = request.getParameter("patientAddress");
		String pCity = request.getParameter("patientCity");
		String pState = request.getParameter("patientState");
		String pZip = request.getParameter("patientZip");
		String pCountry = request.getParameter("patientCountry");
		
		Long number = patientDao.getPatient(pSessionEmail).getMobileNumber();
		
		Patient patient = HibernateUtil.getSession().get(Patient.class, number);
		
		patient.getPatientProfile().setPatientImage(pImage);
		patient.getPatientProfile().setPatientFirstName(pFirstName);
		patient.getPatientProfile().setPatientLastName(pLastName);
		patient.getPatientProfile().setPatientDob(pDob);
		patient.getPatientProfile().setPatientBloodGroup(pBloodGroup);
		patient.getPatientProfile().setPatientAddress(pAddress);
		patient.getPatientProfile().setPatientCity(pCity);
		patient.getPatientProfile().setPatientState(pState);
		patient.getPatientProfile().setPatientZip(pZip);
		patient.getPatientProfile().setPatientCountry(pCountry);
		
		patientDao.updatePatient(patient);
		
		 
		RequestDispatcher dispatcher = request.getRequestDispatcher("patient-dashboard.jsp");
        dispatcher.forward(request, response);
	}

}
