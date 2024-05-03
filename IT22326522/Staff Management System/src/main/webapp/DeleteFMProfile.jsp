<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User Profile</title>
 <link rel="stylesheet" type="text/css" href="css/DeleteProfile.css">
</head>
<body>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String username = request.getParameter("username");
String email = request.getParameter("email");
String datejoined = request.getParameter("datejoined");
String phone = request.getParameter("phone");
String nic = request.getParameter("nic");
String address = request.getParameter("address");
String qualifications = request.getParameter("qualifications");
String experience = request.getParameter("experience");
String password = request.getParameter("password");

%>

 <h1>Finance Manager User Profile Delete Page</h1>
 
 <form action = "DeleteFMServlet" method="post">
 <table>
 
 <tr>
 <td>Finance manager Id </td>
<td><input type="text" name="id" value="<%= id %>" readonly></td> 
</tr>

 <tr>
 <td>Name</td>
 <td><input type="text" name="Name" value="<%= name %>"readonly></td>
</tr>


 <tr>
 <td>User Name</td>
 <td><input type="text" name="UserName" value="<%= username %>"readonly></td>
</tr>
 
 <tr>
 <td> Email</td>
 <td> <input type="email" name="Email" value="<%= email %>"readonly> </td>
</tr>

  <tr>
 <td> Date of Joined</td>
 <td> <input type="text" name="Joined" value="<%= datejoined %>"readonly> </td>
</tr>

 <tr>
 <td> Phone Number</td>
 <td> <input type="tel" name="Phone" value="<%= phone %>"readonly> </td>
</tr>

  <tr>
 <td> NIC</td>
 <td>  <input type="text" name="NIC" value="<%= nic %>"readonly></td>
</tr>

  <tr>
 <td> Address</td>
 <td> <input type="text" name="Address" value="<%= address %>"readonly> </td>
</tr>
 
 <tr>
 <td> Educational Qualifications</td>
 <td> <input type="text" name="Qualifications" value="<%= qualifications %>"readonly> </td>
</tr>

 <tr>
 <td> Years of Experiance</td>
 <td><input type="text" name="Experiance" value="<%= experience %>"readonly>  </td>
</tr>

</table>

<input type="submit" name="submit" value="Delete my account" class="button"><br><br>

</form>
 

</body>
</html>