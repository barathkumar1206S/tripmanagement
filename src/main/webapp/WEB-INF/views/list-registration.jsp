<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>dob</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>password</th>
					<th>role</th>
						
				</tr>
			</thead>
			<tbody>
				<c:forEach var="reg" items="${allRegistration}">
					<tr>
						<td>${reg.userId}</td>
						<td>${reg.firstName}</td>
						<td>${reg.lastName}</td>
						<td>${reg.gender}</td>
						<td>${reg.dob}</td>
						<td>${reg.phoneNumber}</td>
						<td>${reg.email}</td>
						<td>${reg.password}</td>
						<td>${reg.role}</td>
						
						
						
					</tr>
                </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>