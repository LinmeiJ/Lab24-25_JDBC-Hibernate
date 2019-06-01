<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="save">
	<h2>Add a new item:</h2>
		Name: <input type="text" name="name"><br /><br />
		Description:<input type="text" name="description"><br /><br />
		Quantity:<input type="number" name="quantity"><br /><br />
		Price: <input type="number" step="any" name="price"><br /><br />
		<input type="submit" class="btn btn-primary" value="Save">
	</form>
</body>
</html>