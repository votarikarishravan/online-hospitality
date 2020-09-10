package com.shravan.hms.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.DoctorDao;
import com.shravan.hms.model.Doctor;

/**
 * Servlet implementation class RegisterDoctor
 */
public class RegisterDoctor extends HttpServlet {
	private DoctorDao doctorDao;
	private static final long serialVersionUID = 1L;
       
	
	@Override
	public void init() throws ServletException {
		doctorDao = new DoctorDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String speciality = request.getParameter("speciality");
        long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Doctor doctor = new Doctor();
       
        
        doctor.setId(id);
        doctor.setName(name);
        doctor.setJoinDate(new Date());
        doctor.setSpeciality(speciality);
        doctor.setMobileNumber(mobileNumber);
        doctor.setEmail(email);
        doctor.setPassword(password);
        
        doctorDao.saveDoctor(doctor);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin-add-doctor.jsp");
        dispatcher.forward(request, response);
        
	}

}
