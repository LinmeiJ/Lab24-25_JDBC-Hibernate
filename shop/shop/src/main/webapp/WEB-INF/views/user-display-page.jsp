<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body class="display">

	<form action="display-info">
	    <table border="1">
	    <thead>
	        <tr>
	       		<td>First Name</td>
	       		<td>Last Name</td>
	       		<td>Email</td>
	       		<td>Phone Number</td>
	        </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${users}" var="user">
	    <tr> 
	        <td>${user.firstName }</td>
	         <td>${user.lastName }</td>
	         <td>${user.email}</td>
	          <td>${user.phoneNumber }</td>
	         	  
	    </tr>
	    </c:forEach>
	    </tbody>
	    </table>
	</form>
</body>
</html>