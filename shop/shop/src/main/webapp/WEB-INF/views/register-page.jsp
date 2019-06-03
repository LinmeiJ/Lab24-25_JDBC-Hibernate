<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body class="pic">
	
	<form action="register">
				<h3>First Name:</h3>
						<input type="text" name="firstName"><br/>
				<h3>Last Name:</h3>
				 		<input type="text" name="lastName"><br/>
				<h3>Email: </h3>
						<input type="text" name="email"><br/>
				<h3>Phone Number:</h3> 
						<input type="text" name="phoneNumber"><br/>
				<h3>Password: </h3>
						<input type="text" name="password">
				<input type="submit" value="submit">
	</form>

</body>
</html>