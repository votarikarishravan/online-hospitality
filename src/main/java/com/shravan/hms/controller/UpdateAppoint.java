package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.AppointmentDao;
import com.shravan.hms.model.Appointment;

/**
 * Servlet implementation class UpdateAppoint
 */
public class UpdateAppoint extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateAppoint() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int appoid = Integer.parseInt(request.getParameter("appoId"));
		String query = request.getParameter("query");
		AppointmentDao dao = new AppointmentDao();
		Appointment appointment = dao.getAppointmentById(appoid);
		appointment.setStatus(query);
		
		dao.update(appointment);
		
		request.getRequestDispatcher("doctor-appointment-list.jsp").forward(request, response);
	}

}
