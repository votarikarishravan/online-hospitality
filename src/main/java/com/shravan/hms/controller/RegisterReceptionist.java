package com.shravan.hms.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.ReceptionDao;
import com.shravan.hms.model.Receptionist;

/**
 * Servlet implementation class RegisterReceptionist
 */
public class RegisterReceptionist extends HttpServlet {
	private ReceptionDao dao;
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		dao = new ReceptionDao();
	}

	public RegisterReceptionist() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Receptionist receptionist = new Receptionist();

		receptionist.setId(id);
		receptionist.setName(name);
		receptionist.setMobile(mobile);
		receptionist.setEmail(email);
		receptionist.setPassword(password);
		receptionist.setJoinedOn(new Date());

		dao.save(receptionist);
		
		request.getRequestDispatcher("admin-add-receptionist.jsp").forward(request, response);
	}

}
