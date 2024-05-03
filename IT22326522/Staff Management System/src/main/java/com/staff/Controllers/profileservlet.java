package com.staff.Controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.staff.Model.FManager;
import com.staff.Util.StaffDBUtil;
 
public class profileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		List<FManager> a=StaffDBUtil.validate(username, password);
		request.setAttribute("FMdetails", a);
		
		RequestDispatcher dis=request.getRequestDispatcher("FMuserprofile.jsp");
		dis.forward(request, response);
		
		
		
	}

}
