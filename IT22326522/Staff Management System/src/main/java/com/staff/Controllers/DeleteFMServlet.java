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

 
public class DeleteFMServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 String id = request.getParameter("id");
		 
		 boolean isTrue;
		 
		 isTrue = StaffDBUtil.DeleteFM(id);
		 
		 if(isTrue == true) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			 dispatcher.forward(request, response);
		 }
		 else {
				
				List<FManager> FMdetails = StaffDBUtil.getCustomerDetails(id);
				request.setAttribute("FMdetails", FMdetails);	
				
					RequestDispatcher dispatcher = request.getRequestDispatcher("FMuserprofile.jsp");
					dispatcher.forward(request, response);
		 }
		 
	}
	}

