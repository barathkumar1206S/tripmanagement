<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Payments Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getregistration">
				<div>
					UserId :
					<form:input path="userId" />
				</div>
				<br>
				<div>
					First Name :
					<form:input path="firstName" />
				</div>
				<br>
				<div>
					Last Name :
					<form:input path="lastName" />
				</div>
				<br>
				<div>
					Gender :
					<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
				</div>
				<br>
				<div>
					Dob :
					<form:input type="date" path="dob" />
				</div>
				<br>
				<div>
					Phone Number :
					<form:input path="phoneNumber" name="phoneNumber" size="10" />
				</div>
				<br>
				<div>
					Email :
					<form:input path="email" />
				</div>
				<br>
				<br>
				<div>
					Password :
					<form:password path="password" />
				</div>
				<br>
				<div>
					Role:
					<form:radiobutton path="role" value="user" />
					user
					<form:radiobutton path="role" value="admin" />
					admin
				</div>
				<br>

			</form:form>
		</div>
	</div>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Payment Id</th>
					<th>From Date</th> 
					<th>Payment Amount</th>
					<th>Trip Id</th>
					<th>User Id</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payment" items="${getpayments}">
					<tr>
						<td>${payment.paymentId}</td>
						<td>${payment.fromDate}</td>
						<td>${payment.paymentAmout}</td>
						<td>${payment.tripId}</td>
						<td>${payment.userId}</td>
			
						
						
						
					</tr>
                </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>