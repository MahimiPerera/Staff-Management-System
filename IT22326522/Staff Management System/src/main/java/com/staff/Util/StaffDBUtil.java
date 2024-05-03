package com.staff.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.staff.DBConnect.DBConnect;
import com.staff.Model.FManager;
import com.staff.Model.Payroll;

public class StaffDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

//validate and retrieve for FMuserprofile
 public static List<FManager> validate(String username, String password) {
		 
		ArrayList<FManager> fm = new ArrayList<>();
		
		try {
			
			 //singleton design pattern example
			 con = DBConnect.getConnection();
			 
			 stmt =  con.createStatement();
			 
			 String sql = "select * from financemanager where username='"+username+"'and password ='"+password+"'";
			
			 rs = stmt.executeQuery(sql);
			
			 if(rs.next()) {
				 int id = rs.getInt(1);
				 String name = rs.getString(2);
				 String usern  = rs.getString(3);
				 String email = rs.getString(4);
				 String datej = rs.getString(5);
				 String phone = rs.getString(6);
				 String nic = rs.getString(7);
				 String address = rs.getString(8);
				 String qualifications = rs.getString(9);
				 String experience = rs.getString(10);
				 String pass = rs.getString(11);
				 
				 //factory design pattern example
				 FManager f = new FManager(id,name,usern,email,datej,phone,nic,address,qualifications,experience,pass);
				 fm.add(f);
			 }
			 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return fm;
 
	}

	
	
	
//insert help and support 	
 
//Data Access Object (DAO) design Pattern example
public static boolean insertstaff(String userName,String email,String phone,String issue) {
	boolean isSuccess = false;
	
	try {
		 
		 con = DBConnect.getConnection();
		 stmt =  con.createStatement();
		 
		String sql = "insert into helpandsupport values(0,'"+userName+"','"+email+"','"+phone+"','"+issue+"')";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

//insert payroll
 public static boolean insertpayroll(String username,String email,double basicsal,double oTH,double oTR,double bonusAmount,double deductions,double overtimePay,double grossPay,double netPay) {
	boolean isSuccess = false;
	 
	

		try {
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
			 
			String sql = "INSERT INTO payroll (username, email, basicsal, othours, otrate, bonus, tax, overtimePay, grossPay, netPay)\r\n"
					+ "VALUES ('"+username+"', '"+email+"', '"+basicsal+"', '"+oTH+"','"+oTR+"', '"+bonusAmount+"',  '"+deductions+"', '"+overtimePay+"', '"+grossPay+"', '"+netPay+"')";
 
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
	return isSuccess;
}
//Update FM
 public static boolean  UpdateFM(String id,String Name,String UserName,String Email,String Joined,String Phone,String NIC,String Address,String Qualifications,String Experiance,String Password) {
		boolean isSuccess = false;
		 
		     int conid=Integer.parseInt(id);

			try {
				con = DBConnect.getConnection();
				stmt =  con.createStatement();
				 
				String sql = "update financemanager set name='"+Name+"', username='"+UserName+"',email='"+Email+"',datejoined='"+Joined+"',phone='"+Phone+"',nic='"+NIC+"',address='"+Address+"',qualifications='"+Qualifications+"',experience='"+Experiance+"',password='"+Password+"'"
				+"where idfinancemanager ='"+conid+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
		return isSuccess;
	}
//getCustomerDetails after update
 public static List<FManager> getCustomerDetails(String id){
	 
		ArrayList<FManager> fm = new ArrayList<>();
		int convertedID = Integer.parseInt(id);
		try {
			 
			 con = DBConnect.getConnection();
			 stmt =  con.createStatement();
			 
			 String sql = "select * from financemanager where idfinancemanager='"+convertedID+"' ";
			
			 rs = stmt.executeQuery(sql);
			
			 if(rs.next()) {
				int id1 = rs.getInt(1);
				 String name = rs.getString(2);
				 String usern  = rs.getString(3);
				 String email = rs.getString(4);
				 String datej = rs.getString(5);
				 String phone = rs.getString(6);
				 String nic = rs.getString(7);
				 String address = rs.getString(8);
				 String qualifications = rs.getString(9);
				 String experience = rs.getString(10);
				 String pass = rs.getString(11);
				 
				 FManager f = new FManager(id1,name,usern,email,datej,phone,nic,address,qualifications,experience,pass);
				 fm.add(f);
			 }
			 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return fm;

	}

 //delete FMuserprofile
 public static boolean  DeleteFM(String id) {
		boolean isSuccess = false;
		
		 int convId = Integer.parseInt(id);
		 
			try {
				con = DBConnect.getConnection();
				stmt =  con.createStatement();
				 
				String sql = "delete from financemanager where idfinancemanager='"+convId+"'"; 
				 
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
		return isSuccess;
	}
 
 
//retrieve to Payroll Details  to the payroll success page
public static List<Payroll> displayPayroll(String username, String email, Double basicsal, Double oTH, Double oTR, Double bonusAmount, Double deductions, Double overtimePay, Double grossPay, Double netPay) {
	 
	ArrayList<Payroll> pay = new ArrayList<>();
	
	try {
		 
		 con = DBConnect.getConnection();
		 stmt =  con.createStatement();
		 
		 String sql = "select * from payroll where username='"+username+"'";
		
		 rs = stmt.executeQuery(sql);
		
		 while(rs.next()) {
			  int id1 = rs.getInt(1);
			  String username1 = rs.getString(2); 
			  String email1 = rs.getString(3); 
			  Double basicsal1= rs.getDouble(4); 
			  Double othours= rs.getDouble(5); 
			  Double otrate= rs.getDouble(6); 
			  Double bonus= rs.getDouble(7); 
			  Double tax= rs.getDouble(8); 
			  Double overtimePay1= rs.getDouble(9); 
			  Double grossPay1= rs.getDouble(10); 
			  Double netPay1= rs.getDouble(11); 
			 
			  
			  
			 Payroll p = new Payroll(id1,username1,email1,basicsal1,othours,otrate,bonus,tax,overtimePay1,grossPay1,netPay1);
			 pay.add(p);
		 }
		 
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return pay;
}

//retrieve to Payroll user Details  to the FMdashboard
public static List<Payroll> displayPayrollUserDetails() {
	 
	ArrayList<Payroll> pay = new ArrayList<>();
	
	try {
		 
		 con = DBConnect.getConnection();
		 stmt =  con.createStatement();
		 
		 String sql = "select * from payroll";
		
		 rs = stmt.executeQuery(sql);
		
		 while(rs.next()) {
			  int id1 = rs.getInt(1);
			  String username1 = rs.getString(2); 
			  String email1 = rs.getString(3); 
			  Double basicsal1= rs.getDouble(4); 
			  Double othours= rs.getDouble(5); 
			  Double otrate= rs.getDouble(6); 
			  Double bonus= rs.getDouble(7); 
			  Double tax= rs.getDouble(8); 
			  Double overtimePay1= rs.getDouble(9); 
			  Double grossPay1= rs.getDouble(10); 
			  Double netPay1= rs.getDouble(11); 
			 
			  
			  
			 Payroll p = new Payroll(username1,email1);
			 pay.add(p);
		 }
		 
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return pay;
}


//retrieve to Payroll calculation Details  to the FMdashboard
public static List<Payroll> displayPayrollCalculation() {
	 
	ArrayList<Payroll> pay = new ArrayList<>();
	
	try {
		 
		 con = DBConnect.getConnection();
		 stmt =  con.createStatement();
		 
		 String sql = "select * from payroll";
		
		 rs = stmt.executeQuery(sql);
		
		 while(rs.next()) {
			  int id1 = rs.getInt(1);
			  String username1 = rs.getString(2); 
			  String email1 = rs.getString(3); 
			  Double basicsal1= rs.getDouble(4); 
			  Double othours= rs.getDouble(5); 
			  Double otrate= rs.getDouble(6); 
			  Double bonus= rs.getDouble(7); 
			  Double tax= rs.getDouble(8); 
			  Double overtimePay1= rs.getDouble(9); 
			  Double grossPay1= rs.getDouble(10); 
			  Double netPay1= rs.getDouble(11); 
			 
			  
			  
			 Payroll p = new Payroll(id1,username1,email1,basicsal1,othours,otrate,bonus,tax,overtimePay1,grossPay1,netPay1);
			 pay.add(p);
		 }
		 
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return pay;
}



 

}

