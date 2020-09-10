package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Patient;
import com.shravan.hms.util.HibernateUtil;

/**
 * Servlet implementation class ChangePasswordServlet
 */
public class ChangePasswordServlet extends HttpServlet {
	private static PatientDao patientDao;
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		patientDao = new PatientDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("npassword");
		Long mobile = Long.parseLong( request.getParameter("mobile"));
		
		Patient patient = HibernateUtil.getSession().get(Patient.class, mobile);
		
		patient.setPassword(password);
		
		patientDao.updatePatient(patient);
		
		request.getRequestDispatcher("patient-dashboard.jsp").forward(request, response);
	}

}
