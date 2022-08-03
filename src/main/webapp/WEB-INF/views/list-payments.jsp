<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payments List</title>
</head>
<body>
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
				<c:forEach var="payment" items="${allpayments}">
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