package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HttpSession session = request.getSession();

		if (session.getAttribute("LOGIN") == null) {
			if (adminDao.validate(username, password)) {
				session.setAttribute("LOGIN", "ADMIN");
				try {
					request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
				} catch (ServletException | IOException e) {
					e.printStackTrace();
				}
			} else {
				try {
					request.setAttribute("message", "incorrect login credentials...");
					request.getRequestDispatcher("admin-login.jsp").forward(request, response);
				} catch (ServletException | IOException e) {
					e.printStackTrace();
				  }
			}
		}else {
			request.setAttribute("message", "you are already logged in this machine");
			request.getRequestDispatcher("admin-login.jsp").forward(request, response);
		}
	}
}
