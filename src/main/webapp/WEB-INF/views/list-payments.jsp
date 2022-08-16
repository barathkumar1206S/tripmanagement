<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payments List</title>
<style><%@include file ="/WEB-INF/css/list.css"%>

</style>
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
					<th>Edit</th>
                    <th>Delete</th>
                    <th>View</th>
						
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
			<td><a href="updatepaymentform?paymentId=${payment.paymentId}">Edit</a></td>
                        <td><a href="deletepayment?paymentId=${payment.paymentId}">Delete</a></td>
                        <td><a href="getpaymentbyid?paymentId=${payment.paymentId}">View</a></td>
						
						
						
					</tr>
                </c:forEach>
			</tbody>
		</table>
		<div class="btn_align">
            <a href="addpaymentform"><button class="button">ADD PAYMENTS
                </button></a>
	</div>
</body>
</html>