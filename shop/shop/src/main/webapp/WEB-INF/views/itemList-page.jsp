<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coffee In Stock</title>
<link
    href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-9NlqO4dP5KfioUGS568UFwM3lbWf3Uj3Qb7FBHuIuhLoDp3ZgAqPE1/MYLEBPZYM"
    crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="tables">
	<h1>Coffee In Stock</h1>
	<br/>
	<div class="container">
		<table class="table table-striped" border="1">
			<thead>
				<tr class="warning">
					<th>Name</th>
					<th>Description</th>
					<th>Quantity/(each)</th>
					<th>Price</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listItems}" var="item">
				<tr class="info">
					<td>${item.name}</td>
					<td>${item.description }</td>
					<td>${item.quantity}</td>
					<td>$${item.price}</td>
					<td> <a href="editItem?id=${item.id}">Edit</a></td>
					<td> <a href="deleteItem?id=${item.id}" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</div>
	
	<!-- Add -->

	<form action="addItem">
		<h4>
			<input type="submit" value="Add a new item" >
   		</h4>
	</form>
	
		
</body>
</html>	