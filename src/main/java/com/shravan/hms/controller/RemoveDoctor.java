package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.DoctorDao;
import com.shravan.hms.model.Doctor;

/**
 * Servlet implementation class RemoveDoctor
 */
public class RemoveDoctor extends HttpServlet {
	private DoctorDao dDao;
	private static final long serialVersionUID = 1L;
       
	@Override
	public void init() throws ServletException {
		dDao = new DoctorDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int docId = Integer.parseInt(request.getParameter("docId"));
		
		dDao.delete(docId);
		
		request.getRequestDispatcher("admin-doctor-list.jsp").forward(request, response);
	}

}
