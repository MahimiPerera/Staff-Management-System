package com.staff.Controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.staff.Util.StaffDBUtil;

 
public class HelpandSupportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("contactNumber");
		String issue = request.getParameter("Issue");
		
		boolean isTrue;
		
		isTrue = StaffDBUtil.insertstaff(userName, email, phone, issue);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
			 
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
	}
	}


