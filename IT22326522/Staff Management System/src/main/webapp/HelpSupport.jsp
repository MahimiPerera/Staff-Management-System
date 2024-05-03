<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help and Support</title>
 
<link rel="stylesheet" type="text/css" href="css/HelpSupport.css">

</head>
<body>
<div class="container">
                <div class="title">
                <span class="text">Welcome to Help and Support Page ! </span>
                </div>
        <div class="form">
            <form action="HelpandSupportInsertServlet" method="POST">

                <div class="f1">

                    <label for="user name">User Name:</label>
                    <input type="text" id="username" name="username" required><br><br>

                    <label for="email">Email Address:</label>
                    <input type="email" pattern="{0-9}{10}" id="email" name="email" required> <br><br>

                    <label for="contact-number">Contact Number:</label>
                    <input type="tel" id="contactNumber" name="contactNumber" required> <br><br>

                    <label for="Issue">Issue:</label>
                    <textarea name="Issue" id="Issue"   rows="4" required></textarea> <br><br>


                    <input type="submit" name="submit" value="Get Help" class="button"><br><br>
                    
                      



                </div>
            </form>
        </div>
  </div>
</body>
</html>