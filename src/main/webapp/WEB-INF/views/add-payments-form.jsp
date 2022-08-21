<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.chainsys.tripmanagement.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Payments Details</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	background-image: url("https://thumbs.dreamstime.com/b/euro-4054151.jpg");
	background-repeat: no-repeat;
	background-size: 1366px 650px;
	background-position: center top;
	position: relative;
}


</style>
</head>
<body>
	<h2>Payments Form</h2>
	<div id="root">
		<div id="form" class="top">
			<form:form class="action" action="addpay" method="post" modelAttribute="addpayments">

				<div>
					<label class="heading-text" for="fromDate">From Date</label>
					<div>
						<form:input type="date" path="fromDate" class="input-size" />
					</div>
				</div>

				<div>
					<label class="heading-text" for="tripId">Trip Id</label>
					<div>
						<form:input path="tripId" readonly="true" class="input-size" />
					</div>
				</div>

				<div>
					<label class="heading-text" for="userId">User Id</label>
					<div>
						<form:input path="userId" readonly="true" class="input-size" />
					</div>
				</div>

				<div>
					<label class="heading-text" for="paymentAmout">Payment Amout</label>
					<div>
					<form:input path="paymentAmout" class="input-size" />
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