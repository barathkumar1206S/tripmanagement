<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find By PaymentId</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>

body {
	 background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),
		url("https://thumbs.dreamstime.com/b/euro-4054151.jpg"); 
	background-repeat: no-repeat;
	background-size: 1366px 650px;
	background-position: center top;
	position: relative;
}


</style>
</head>
<body>

	<h2 align="center" class="color">Payments Form</h2>
	<div id="root">
		<div id="form" class="top" >
			<form:form action="paymentrecived" method="get"
				modelAttribute="getpayments">

				<div>
					<label class="color" for="paymentId">PaymentId</label>
					<div>
						<form:input path="paymentId" class="input-size" />
					</div>
				</div>

				<div>
					<label  class="color" for="fromDate">FromDate</label>
					<div>
						<form:input type="date" path="fromDate" class="input-size" />
					</div>
				</div>

				<div>
					<label class="color"   for="paymentAmout">PaymentAmout
					</label>
					<div>
					<form:input path="paymentAmout" id="paymentAmout"
						 class="input-size" />
					</div>
				</div>
				<div>
					<label class="color"  for="tripId">TripId</label>
					<div>
						<form:input path="tripId" class="input-size" />
					</div>
				</div>

				<div>
					<label class="color"  for="userId">UserId</label>
					<div class="bottom">
						<form:input path="userId" class="input-size" />
					</div>
				</div>
	          <div>
					<input class="submit" type="submit" value="Submit" />
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>