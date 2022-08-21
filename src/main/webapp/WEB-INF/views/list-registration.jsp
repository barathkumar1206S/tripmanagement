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
		<caption></caption>
			<thead>
				<tr>
					<th>User Id</th>
					<th>User Name</th>
					<th>Gender</th>
					<th>Date Of Birth</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Role</th>
					

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
						<td>${reg.role}</td>


					</tr>
                </c:forEach>
			</tbody>
		</table>
		
	</div>
</body>
</html>