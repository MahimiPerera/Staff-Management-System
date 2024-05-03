package com.staff.Controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.http.HttpSession;

import com.staff.Model.FManager;
import com.staff.Model.Payroll;
import com.staff.Util.StaffDBUtil;

 
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		StaffDBUtil.validate(username, password);
		try {
		List<FManager> FMdetails = StaffDBUtil.validate(username, password);
		request.setAttribute("FMdetails",FMdetails);
		
		List<Payroll> r=StaffDBUtil.displayPayrollUserDetails();
		request.setAttribute("paydetails",r);
		
		List<Payroll> b=StaffDBUtil.displayPayrollCalculation();
		request.setAttribute("paycalculations",b);
		
		
		}catch(Exception e) {
		     e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("FMdashboard.jsp");
		dis.forward(request, response);
		
        // session initiate
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		
		HttpSession session1 = request.getSession();
		session1.setAttribute("password", password);
		
				 
		
			 
	  }
	} 
    
	


 