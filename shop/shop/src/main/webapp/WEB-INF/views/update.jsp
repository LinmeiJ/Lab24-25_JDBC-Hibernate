<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="item-update">
		Name: <input type="text" name="name">
		Description: <input type="text" name="description">
		Quantity: <input type="number" name="quantity">
		Price: <input type="number" step="any" name="price">
		<input type="hidden" name="id"  value="${id}">
		<input type="submit" value="Save">
		
	</form>
</body>
</html>