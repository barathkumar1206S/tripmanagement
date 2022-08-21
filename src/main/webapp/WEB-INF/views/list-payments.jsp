<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payments List</title>
<style><%@include file ="/WEB-INF/css/list.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px;
width:100%;
cellpadding:2px;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<div id="table root">
		<table class="table-size">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>Payment Id</th>
					<th>From Date</th> 
					<th>Payment Amount</th>
					<th>Trip Id</th>
					<th>User Id</th>
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
                        <td><a href="getpaymentbyid?paymentId=${payment.paymentId}">View</a></td>
						
						
						
					</tr>
� � � � � � � � </c:forEach>
			</tbody>
		</table>
	
	</div>
</body>
</html>