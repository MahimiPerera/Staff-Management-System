<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>login</title>

  <!-- style -->
  <style>
      /*css styles for login */
      body {
        font-family: Product Sans, bold;
        background-color:  #ccc;
      }
      .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }
      h1 {
        text-align: center;
      }
      label {
        display: block;
        margin-bottom: 10px;
      }
      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background-color:  #1d64c2;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: DARKOLIVEGREEN;
      }
    </style>
</head>
<body>
     <div class="container">
      <h1>Login</h1>
      <form action="LoginServlet" method="post">
        <label for="username">Username </label>
        <input type="text" id="username" name="uid" required />

        <label for="password">Password</label>
        <input type="password" id="password" name="pass" required />

        <input type="submit" value="Login" name = "submit"/>

        <label for="Forget your password?"
          >Forget your password?<a href=""> Click here </a></label
        >
      </form>
    </div>

    
    

</body>
</body>
</html>