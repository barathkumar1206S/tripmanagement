<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Registration List</title>
<style><%@include file ="/WEB-INF/css/list.css"%>

</style>
</head>
<body>
	<div id="table root" class="top">
		<table>
			<thead>
				<tr>
					<th>User Id</th>
					<th>User Name</th>
					<th>Gender</th>
					<th>dob</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>password</th>
					<th>role</th>
					<th>View</th>
					<th>Edit</th>
					<th>Delete</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="reg" items="${allregistration}">
					<tr>
						<td>${reg.userId}</td>
						<td>${reg.userName}</td>
						<td>${reg.gender}</td>
						<td>${reg.dob}</td>
						<td>${reg.phoneNumber}</td>
						<td>${reg.email}</td>
						<td>${reg.password}</td>
						<td>${reg.role}</td>
						<td><a href="getregistration?userId=${reg.userId}">View</a></td>
						<td><a href="updateregform?userId=${reg.userId}">Edit</a></td>
						<td><a href="deletereg?userId=${reg.userId}">Delete</a></td>


					</tr>
                </c:forEach>
			</tbody>
		</table>
		<div class="btn_align">
			<a href="addregform"><button class="button">ADD USER</button></a>
		</div>
	</div>
</body>
</html>