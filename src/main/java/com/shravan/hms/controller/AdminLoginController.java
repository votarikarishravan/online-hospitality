package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.AdminDao;

/**
 * Servlet implementation class AdminLoginController
 */
public class AdminLoginController extends HttpServlet {
	private static AdminDao adminDao;
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		adminDao = new AdminDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminLoginController() {
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
		String password = request.getParameter("password");

		if (adminDao.validate(username, password)) {
			try {
				request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				request.setAttribute("message", "please ensure authorized credentials");
				request.getRequestDispatcher("admin-login.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
	}

}
