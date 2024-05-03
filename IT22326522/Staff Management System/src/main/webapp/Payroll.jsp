<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payroll</title>
 <link rel="stylesheet" type="text/css" href="./css/Payroll.css">

  
</head>
<body>
<div class="container">
                <div class="title">
                <span class="text">Welcome to Payroll Calculation Page ! </span>
                </div>
        
        <div class="form">
            <form action="PayrollInsertServlet" method="POST">

                <div class="f1">


                    <label for="user name">User Name</label>
                    <input type="text" id="user name" name ="username" required><br><br>

                    <label for="email">Email Address</label>
                    <input type="email" pattern="{0-9}{10}" id="email" name ="email"  required> <br><br>

                    <label for="Basic Sal">Enter Basic Salary</label>
                    <input type="number" id="Basicsal" name="Basicsal" min="0" required><br><br>

                    <label for="OTH">Enter OT Hours</label>
                    <input type="number" id="OTH" name="OTH" min="0" required><br><br>
                    
                    <label for="OTR">Enter OT Rate</label>
                    <input type="number" id="OTR" name="OTR" min="0" required><br><br>

                    <label for="Bonus Amount">Enter Bonus Amount</label>
                    <input type="number" id="BonusAmount" name="BonusAmount" min="0" required><br><br>

                    <label for="Deductions">Enter Tax Deduction Amount</label>
                    <input type="number" id="Deductions" name="Deductions" min="0" required><br><br>

					<input type="submit" name="submit" value="calculate" class="button"><br><br>
                    




                </div>
            </form>
        </div>
   </div>
</body>
</html> 