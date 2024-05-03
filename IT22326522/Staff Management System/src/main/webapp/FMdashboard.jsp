<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Finance Manager Dashboard</title>
<link rel="stylesheet" type="text/css" href="css/FMdashboard.css">
<style>
  .button-container {
    display: flex;
    justify-content: center;
    gap: 50px;  
  }
  
  .button-container > a{
  	font-size: medium;
  }
  .button-container > form,
  {
   
}

.button {
    padding: 28px 50px;
    background-color: #3498db;
    color: #ffffff;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
    border-radius: 30px;
    margin: 10px auto;
    display: flex;
    justify-content: space-between;
    max-width: 90%;
        display: flex;
    justify-content: center;
    text-decoration: none;
}

  .button:hover {
    background-color: #2980b9;  
  }
</style>
</head>

<body>

<div class="container">
  <div class="title">
  
    <span class="text"> Welcome to Finance Manager Dashboard! </span>
  </div>
       <%
            String username=(String) session.getAttribute("username");
            String password=(String) session.getAttribute("password");
        
        
       %>
       
  <form action="profileservlet" method="post">
    <div class="button-container">
     
       
        <input type="hidden" name="username" value="<%=username%>">
         <input type="hidden" name="password" value="<%=password%>">
        <input type="submit" value="<%=username%>" name="profile" class="button">
     
       </div>
  </form>
  <div class="button-container">
   <a href="Payroll.jsp">
        <input type="button" value="Calculate Payroll" class="button">
      </a>
        </div>
      
      

      <form action="LogOutServlet" method="post">
    <div class="button-container">
     
       
        <input type="hidden" name="username" value="<%=username%>">
         <input type="hidden" name="password" value="<%=password%>">
        <input type="submit" value="Logout" name="profile" class="button">
     
       </div>
       
  </form>
  <div class="button-container">
      <a href="HelpSupport.jsp">
        <input type="button" value="Help and support" class="button">
      </a>
      </div>
</div>

 <!--Display User details of the payroll-->
 
<h1 style="text-align: center;">Employee Details</h1>
 
  <table class="user-table">
  <thead>
    <tr>
      <th>User Name</th>
      <th>Email</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="pay" items="${paydetails}">
      <tr>
        <td><c:out value="${pay.username}" /></td>
        <td><c:out value="${pay.email}" /></td>
      </tr>
    </c:forEach>
  </tbody>
</table>


 <!--Display calculation details of the payroll-->
  

<h1 style="text-align: center;">Payroll Details</h1>
<table class="pay-calculation-table">
  <thead>
    <tr>
      <th>User Name</th>
      <th>Basic Salary</th>
      <th>OT Hours</th>
      <th>OT Rate</th>
      <th>Bonus</th>
      <th>Tax</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="pay" items="${paycalculations}">
      <tr>
        <td><c:out value="${pay.username}" /></td>
        <td><c:out value="${pay.basicsal}" /></td>
        <td><c:out value="${pay.othours}" /></td>
        <td><c:out value="${pay.otrate}" /></td>
        <td><c:out value="${pay.bonus}" /></td>
        <td><c:out value="${pay.tax}" /></td>
      </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>
