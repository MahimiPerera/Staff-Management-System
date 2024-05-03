<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
  
  <link rel="stylesheet" type="text/css" href="./css/Index.css">
</head>
<body> 
  <!--header-->
<header style="background-color: #333; color: #fff; padding: 10px; display: flex; justify-content: space-between; align-items: center;">
        <div class="logo" style="font-size: 1.5rem;">Your Staff Management System</div>
        <nav>
            <ul style="list-style: none; padding: 0;">
                <li style="display: inline; margin-right: 20px;"><a href="/">Home</a></li>
                <li style="display: inline; margin-right: 20px;"><a href="/staff">Staff</a></li>
                <li style="display: inline; margin-right: 20px;"><a href="/departments">Departments</a></li>
               
            </ul>
        </nav>
</header>

    <hr style="color:black; margin: 0px 100px; border:1px solid black">
  

<div class="title">
                <span class="text">Welcome to ABC Company Online Staff Management System ! </span>
                </div>
               
    <!--Quick access links-->
    <div class="container">
      
        
        <img src="./img/pic.jpg" alt="Staff" class="QAimg">
        <div class="content">
            <h1 class="topic">Get Access to the Online Staff Management System</h1>
            <ul class="Link-set">
                <li><a href="login.jsp">Log In<i class="fa fa-chevron-right"></i></a></li>
                <li><a href="HelpSupport.jsp">Help and support<i class="fa fa-chevron-right"></i></a></li>
            </ul>
        </div>
    </div>

    
    <hr style="color:black; margin: 0px 100px; border:1px solid black">
    
     <!--footer-->
    <footer style="background-color: #333; color: #fff; text-align: center; padding: 10px;">
        &copy; 2023 Your Company | <a href="contact.html" style="color: #fff; text-decoration: none;">Contact Us</a>
    </footer>
</body>
</html>