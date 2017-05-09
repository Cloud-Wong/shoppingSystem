package com.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GoodsDao;
import com.model.Order;
import com.model.TimeZoneUtil;

/**
 * Servlet implementation class addServlet
 */

public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		Order order = new Order();
		order.setName(request.getParameter("name"));
		order.setAdress(request.getParameter("adress"));
		order.setCountry(request.getParameter("country"));
		order.setReceiver(request.getParameter("receiver"));
	      TimeZoneUtil t = new TimeZoneUtil();
		order.setUtc(t.getUTCTimeStr());
		
		GoodsDao goodsdao = new GoodsDao();
		goodsdao.saveOrder(order);
		
		response.sendRedirect("index.html");
	}

}
