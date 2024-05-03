<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Finance Manager User Profile</title> 
<link rel="stylesheet" type="text/css" href="css/FMuserprofile.css">
</head>
<body>

 

 <!--retrieve Finance manager details-->
 
    <div class="div1 ">

     <h1>Finance Manager Profile Details:</h1>
            
        <table class="tb ">
        
        <c:forEach var="FMgr" items="${FMdetails}">

            
           <c:set var="id" value = "${FMgr.id}"/> 
            <c:set var="name" value = "${FMgr.name}"/> 
             <c:set var="username" value = "${FMgr.username}"/> 
             
             <c:set var="email" value = "${FMgr.email}"/> 
              <c:set var="datejoined" value = "${FMgr.datejoined}" /> 
               <c:set var="phone" value = "${FMgr.phone}"/> 
                <c:set var="nic" value = "${FMgr.nic}"/> 
                <c:set var="address" value = "${FMgr.address} "/> 
                <c:set var="qualifications" value = "${FMgr.qualifications}"/> 
                <c:set var="experience" value = "${FMgr.experience}"/> 
                <c:set var="password" value = "${FMgr.password}"/> 
                
            <tr>
                <th>Finance manager Id</th>
                <td><c:out value =" ${FMgr.id} "/></td>
            </tr>
            <tr>
                <th> Name</th>
                <td><c:out value =" ${FMgr.name} "/></td>
            </tr>

            <tr>
                <th> User Name</th>
                <td><c:out value ="${FMgr.username} "/></td>
                
            </tr>

            <tr>
                <th> Email</th>
                <td><c:out value =" ${FMgr.email}  "/></td>
                
            </tr>

            <tr>
                <th> Date of Joined</th>
                <td><c:out value ="  ${FMgr.datejoined} "/></td>
               
            </tr>

            <tr>
                <th> Phone Number</th>
                <td><c:out value =" ${FMgr.phone}  "/></td>
                
            </tr>

            <tr>
                <th> NIC</th>
                <td><c:out value =" ${FMgr.nic}  "/></td>
               
            </tr>

            <tr>
                <th> Address</th>
                <td><c:out value =" ${FMgr.address} "/></td>
               
            </tr>

            <tr>
                <th> Educational Qualifications</th>
                <td><c:out value =" ${FMgr.qualifications}  "/></td>
                
            </tr>

            <tr>
                <th> Years of Experience</th>
                <td><c:out value =" ${FMgr.experience}"/></td>
               
            </tr>
            <tr>
                <th>Password</th>
                <td><c:out value =" ${FMgr.password} "/></td>
             
            </tr>
            
               
                  </c:forEach>
        </table>
        
         <!--Update Finance manager details-->
         
    <c:url value ="UpdateFMProfile.jsp" var="fmupdate">
       	<c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="username" value="${username}"/>
         <c:param name="email" value="${email}"/>
   		<c:param name="datejoined" value="${datejoined}"/>
         <c:param name="phone" value="${phone}"/>
         <c:param name="nic" value="${nic}"/>
         <c:param name="address" value="${address}"/>
   		<c:param name="qualifications" value="${qualifications}"/>
         <c:param name="experience" value="${experience}"/>
         <c:param name="password" value="${password}"/>
    </c:url>
        
        <a href="${fmupdate}">
       	 <input type="submit" name="update" value="update my data" class="button"><br><br>
       	</a>
       	
        <!--Delete Finance manager Profile-->	
       	      
    <c:url value ="DeleteFMProfile.jsp" var="fmDelete">
       	<c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="username" value="${username}"/>
         <c:param name="email" value="${email}"/>
   		<c:param name="datejoined" value="${datejoined}"/>
         <c:param name="phone" value="${phone}"/>
         <c:param name="nic" value="${nic}"/>
         <c:param name="address" value="${address}"/>
   		<c:param name="qualifications" value="${qualifications}"/>
         <c:param name="experience" value="${experience}"/>
         <c:param name="password" value="${password}"/>
    </c:url>
       	
       	
       	<a href="${fmDelete}">
       	<input type="submit" name="delete" value="Delete my data" class="button"><br><br>
       </a>
       
    </div>
 
</body>
</html>