package com.shravan.hms.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;

import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Patient;
import com.shravan.hms.util.EmailUtility;
import com.shravan.hms.util.HibernateUtil;

/**
 * Servlet implementation class ResetPasswordServlet
 */
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDao patientDao;
	private String host;
	private String port;
	private String email;
	private String name;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		email = context.getInitParameter("email");
		name = context.getInitParameter("name");
		pass = context.getInitParameter("pass");
		patientDao = new PatientDao();
	}

	public ResetPasswordServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String recipient = request.getParameter("email");
		String subject = "Your Password has been reset";
		String message = "";

		try {
			Long mobileNumbe = patientDao.getPatient(recipient).getMobileNumber();
				
			Patient patient = HibernateUtil.getSession().get(Patient.class, mobileNumbe);
			
			String newPassword = RandomStringUtils.randomAlphanumeric(10);
			
			patient.setPassword(newPassword);
			
			patientDao.updatePatient(patient);

			String content = "Hi, this is your new password: " + newPassword;
			content += "\nNote: for security reason, " + "you must change your password after logging in.";

			EmailUtility.sendEmail(host, port, email, name, pass, recipient, subject, content);
			message = "Your password has been reset. Please check your e-mail.";

		} catch (Exception e) {
			e.printStackTrace();
			message = "There were an error: " + e.getMessage();

		} finally {
			request.setAttribute("message", message);
			request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}