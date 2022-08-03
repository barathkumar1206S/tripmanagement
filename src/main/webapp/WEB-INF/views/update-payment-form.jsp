<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Update Payments Form</h3>
	<div id="root">
		<div id="form">
			<form:form action="updatepayment" method="post" modelAttribute="updatepayments">
				<div>
					PaymentId :
					<form:input path="paymentId" />
				</div>
				<br>
				<div>
					FromDate :
					<form:input type="date" path="fromDate" />
				</div>
				<br>
				<div>
					PaymentAmout :
					<form:input path="paymentAmout" />
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
					<input type="submit" value="Submit" /> 
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>