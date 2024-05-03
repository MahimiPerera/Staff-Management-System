package com.staff.Controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.staff.Model.Payroll;
import com.staff.Util.StaffDBUtil;

 
public class PayrollInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
       
    
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		double Basicsal = Double.parseDouble(request.getParameter("Basicsal"));
		double OTH = Double.parseDouble(request.getParameter("OTH"));
		double OTR = Double.parseDouble(request.getParameter("OTR"));
		double BonusAmount = Double.parseDouble(request.getParameter("BonusAmount"));
		double Deductions = Double.parseDouble(request.getParameter("Deductions"));

		// Calculate overtimePay
		double overtimePay = OTH * OTR;

		// Calculate grossPay
		double grossPay = Basicsal + overtimePay + BonusAmount;

		// Calculate netPay
		double netPay = grossPay - Deductions;

		 
		 boolean isTrue; 
		 
		 isTrue =  StaffDBUtil.insertpayroll(username, email, Basicsal, OTH, OTR, BonusAmount, Deductions,  overtimePay,  grossPay,  netPay);
		 
			if(isTrue == true) {
				List<Payroll> paydetails = StaffDBUtil.displayPayroll( username, email, Basicsal, OTH, OTR, BonusAmount, Deductions, overtimePay, grossPay, netPay);
				request.setAttribute("paydetails", paydetails);
				RequestDispatcher dis = request.getRequestDispatcher("payrollsuccess.jsp");
				dis.forward(request, response);
					
			}else {
				RequestDispatcher dis2 = request.getRequestDispatcher("payrollunsuccess.jsp");
				dis2.forward(request, response);
				 
		    
			}
	}
	}


