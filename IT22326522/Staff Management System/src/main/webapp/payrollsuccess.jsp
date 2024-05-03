<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>successful</title>
 <style>
 
th {
    text-align: left;
    padding: 8px;
    width: 50%;
    font-size: 15px;
}

td {
    font-family: Helvetica, Arial, sans-serif;
    text-align: center;
    padding: 8px;
    width: 50%;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
    box-sizing: border-box;
    width: 100%;
}

.tb {
    width: 100%;
}

th.heading {
    color: #002960;
    font-size: 24px;
}
 </style>
</head>
<body>
<h1>Payroll Successful</h1>
 

 <table class="tb ">
        
        <c:forEach var="pay" items="${paydetails}">
       
            <tr>
                <th>Overtime Pay</th>
                <td> <c:out value ="${pay.overtimePay}"/></td>
                   
            </tr>

            <tr>
                <th> Gross Pay</th>
                <td><c:out value ="${pay.grossPay}"/></td>
                
            </tr>
            
              <tr>
                <th> Net Pay</th>
                <td><c:out value ="${pay.netPay}"/></td>
                
            </tr>
            
              
            
        </c:forEach>
        </table>

</body>
</html>