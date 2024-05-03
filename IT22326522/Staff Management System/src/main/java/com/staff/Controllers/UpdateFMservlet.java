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

 
public class UpdateFMservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String Name = request.getParameter("Name");
		String UserName = request.getParameter("UserName");
		String Email = request.getParameter("Email");
		String Joined = request.getParameter("Joined");
		String Phone = request.getParameter("Phone");
		String NIC = request.getParameter("NIC");
		String Address = request.getParameter("Address");
		String Qualifications = request.getParameter("Qualifications");
		String Experiance = request.getParameter("Experiance");
		String Password = request.getParameter("Password");
		
		boolean isTrue;
		
		isTrue = StaffDBUtil.UpdateFM(id, Name, UserName, Email, Joined, Phone, NIC, Address, Qualifications, Experiance, Password);
		
				if(isTrue == true) {
					
				List<FManager> FMdetails = StaffDBUtil.getCustomerDetails(id);
				request.setAttribute("FMdetails", FMdetails);	
				
					RequestDispatcher dis = request.getRequestDispatcher("FMuserprofile.jsp");
					dis.forward(request, response);
				}
				else {
					RequestDispatcher dis = request.getRequestDispatcher("UpdateFMprofile.jsp");
					dis.forward(request, response);
				}
		
	}
	}


