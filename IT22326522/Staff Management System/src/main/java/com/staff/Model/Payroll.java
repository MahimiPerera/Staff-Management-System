package com.staff.Model;

public class Payroll {
	private int idpayroll;
	private String username; 
	private String email; 
	private double basicsal; 
	private double othours; 
	private double otrate; 
	private double bonus; 
	private double tax; 
	private double overtimePay; 
	private double grossPay; 
	private double netPay;
	
	//constructor
	public Payroll(int idpayroll, String username, String email, double basicsal, double othours, double otrate,
			double bonus, double tax, double overtimePay, double grossPay, double netPay) {
		 
		this.idpayroll = idpayroll;
		this.username = username;
		this.email = email;
		this.basicsal = basicsal;
		this.othours = othours;
		this.otrate = otrate;
		this.bonus = bonus;
		this.tax = tax;
		this.overtimePay = overtimePay;
		this.grossPay = grossPay;
		this.netPay = netPay;
	}
	
 
	public Payroll(String username, String email) {
		this.username = username;
		this.email = email;
	}

	//getters
	
	public int getIdpayroll() {
		return idpayroll;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public double getBasicsal() {
		return basicsal;
	}

	public double getOthours() {
		return othours;
	}

	public double getOtrate() {
		return otrate;
	}

	public double getBonus() {
		return bonus;
	}

	public double getTax() {
		return tax;
	}

	public double getOvertimePay() {
		return overtimePay;
	}

	public double getGrossPay() {
		return grossPay;
	}

	public double getNetPay() {
		return netPay;
	}

 
	
}

