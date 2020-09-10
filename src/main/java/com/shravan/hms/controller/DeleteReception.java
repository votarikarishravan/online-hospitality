package com.shravan.hms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shravan.hms.dao.ReceptionDao;

/**
 * Servlet implementation class DeleteReception
 */
public class DeleteReception extends HttpServlet {
	private ReceptionDao rDao;
	private static final long serialVersionUID = 1L;
       
	@Override
	public void init() throws ServletException {
		rDao = new ReceptionDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteReception() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int recepId = Integer.parseInt(request.getParameter("recepId"));
		
		rDao.delete(recepId);
		
		request.getRequestDispatcher("admin-reception-list.jsp").forward(request, response);
	}

}
