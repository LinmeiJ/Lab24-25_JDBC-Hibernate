<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
    href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-9NlqO4dP5KfioUGS568UFwM3lbWf3Uj3Qb7FBHuIuhLoDp3ZgAqPE1/MYLEBPZYM"
    crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>

<body>
	<div class="container2">
			<table class="table table-striped" border="1" >
				<thead>
					<tr class="warning">
						<th>Name</th>
						<th>Description</th>
						<th>Quantity/(each)</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<tr class="info">
						<td>${result.name}</td>
						<td>${result.description }</td>
						<td>${result.quantity} oz</td>
						<td>$${result.price}</td>
					</tr>
				</tbody>
			</table>
		</div>
</body>
</html>