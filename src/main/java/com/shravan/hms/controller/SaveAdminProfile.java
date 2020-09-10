package com.shravan.hms.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.shravan.hms.dao.AdminDao;
import com.shravan.hms.model.Admin;

/**
 * Servlet implementation class SaveAdminProfile
 */
@MultipartConfig
public class SaveAdminProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveAdminProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part part = request.getPart("Image");
		InputStream inputStream = part.getInputStream();
		
		byte[] pImage = new byte[inputStream.available()];
		String pFirstName = request.getParameter("FirstName");
		String pLastName = request.getParameter("LastName");
		
		String pDob = request.getParameter("Dob");
		 
		String pBloodGroup = request.getParameter("BloodGroup");
		
		String pAddress = request.getParameter("Address");
		String pCity = request.getParameter("City");
		String pState = request.getParameter("State");
		String pZip = request.getParameter("Zip");
		String pCountry = request.getParameter("Country");
		
		Admin admin = AdminDao.getAdmin();
		
		admin.getAdminProfile().setImage(pImage);
		admin.getAdminProfile().setFirstName(pFirstName);
		admin.getAdminProfile().setLastName(pLastName);
		admin.getAdminProfile().setDob(pDob);
		admin.getAdminProfile().setBloodGroup(pBloodGroup);
		admin.getAdminProfile().setAddress(pAddress);
		admin.getAdminProfile().setCity(pCity);
		admin.getAdminProfile().setState(pState);
		admin.getAdminProfile().setZip(pZip);
		admin.getAdminProfile().setCountry(pCountry);
		
		AdminDao.updateAdmin(admin);
		
		 
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin-dashboard.jsp");
        dispatcher.forward(request, response);
	}

}
