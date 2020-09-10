package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.DoctorDao;
import com.shravan.hms.dao.ReceptionDao;

/**
 * Servlet implementation class DoctorLogin
 */
public class DoctorLogin extends HttpServlet {
	private DoctorDao dao;
	private ReceptionDao rDao;
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		dao = new DoctorDao();
		rDao = new ReceptionDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoctorLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		int id = Integer.parseInt(request.getParameter("id"));
		String password = request.getParameter("password");

		if (username.equals("Doctor")) {
			if (dao.validate(id, password)) {
				request.getSession().setAttribute("doctorId", id);
				request.getRequestDispatcher("doctor-dashboard.jsp").forward(request, response);
			} else {
				request.setAttribute("dmessage", "please make sure authorized credentials");
				request.getRequestDispatcher("doctor-login.jsp").forward(request, response);
			}
		} else {
			if (rDao.validate(id, password)) {
				request.getSession().setAttribute("receptionId", id);
				request.getRequestDispatcher("reception.jsp").forward(request, response);
			} else {
				request.setAttribute("dmessage", "please make sure authorized credentials");
				request.getRequestDispatcher("reception-login.jsp").forward(request, response);
			}
		}
	}

}
