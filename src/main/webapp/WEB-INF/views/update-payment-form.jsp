<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Trip Management</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
</style>
</head>
<body>
<h3 align="center">Update Payments Form</h3>
	<div id="root">
		<div id="form" class="top">
			<form:form class="action"  action="updatepayment" method="post" modelAttribute="updatepayments">
				<div>
					<label class="heading-text" for="paymentId">PaymentId</label>
					<div>
						<form:input  path="paymentId" readonly="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="fromDate">FromDate</label>
					<div>
						<form:input type="date" path="fromDate" class="input-size" />
					</div>
				</div>
				<div>
				<label class="heading-text" for="paymentAmout">PaymentAmount</label>
					<div>
					<form:input path="paymentAmout" class="input-size"/>
				</div>
				</div>
				<div>
					<label class="heading-text" for="tripId">TripId</label>
					<div>
						<form:input path="tripId" readonly="true" class="input-size" />
					</div>
				</div>
			<div>
					<label class="heading-text" for="userId">UserId</label>
					<div>
						<form:input path="userId" readonly="true" class="input-size" />
					</div>
				</div>
				<div>
                    <form:button class="button-style">UPDATE</form:button>
                </div>
			</form:form>
		</div>
	</div>
</body>
</html>