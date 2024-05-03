package com.staff.Controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.http.HttpSession;
 
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		HttpSession session=request.getSession();
		session.invalidate();
		HttpSession session1=request.getSession();
		session1.invalidate();
		
		RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
		dis.forward(request, response);

	}

}
