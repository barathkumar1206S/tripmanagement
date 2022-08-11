<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@page import="com.chainsys.tripmanagement.businesslogic.Logic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payments Details  </title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<h1>Trip Management System</h1>
	<h3>Payments Form</h3>
	<script>
		function calculation(){
			var noofticket=document.getElementById("noOfTickets").value;
			var noOfTickets=parseInt(noofticket);
			//var amount=Logic.paymentAmountCalculation(noOfTickets,500);
			
			document.getElementById("paymentAmout").value=noOfTickets*500;
		}
	</script>
	<div id="root">
		<div id="form">
			<form:form action="addpay" method="post" modelAttribute="addpayments">
			 	
				<div>
					FromDate :
					<form:input type="date" path="fromDate" />
				</div>
				
				<br>
				<div>
					TripId:
					<form:input  path="tripId" />
				</div>
				<br>
				<div>
					UserId:
					<form:input path="userId" />
				</div>
				<br>
				<div>
					PaymentAmout :
					<form:input path="paymentAmout" id="paymentAmout" onchange="calculation(this.form)"/>
				</div>
				<br>
				<div>
					<input type="submit" value="Submit" /> 
				</div>
			</form:form>
		</div>
	</div>
	
</body>
</html>