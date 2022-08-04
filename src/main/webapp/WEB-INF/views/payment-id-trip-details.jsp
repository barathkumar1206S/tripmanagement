<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Id Trip Details</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addtripdetail" method="post"
				modelAttribute="tripdetail">
				<div>
					TripId :
					<form:input path="tripId" />
				</div>
				<br>
				<div>
					Package Id :
					<form:input path="packageId" />
				</div>
				<br>
				<div>
					Start Date :
					<form:input type="date" path="startDate" />
				</div>
				<br>
				<div>
					End Date :
					<form:input type="date" path="endDate" />
				</div>
				<br>
				<div>
					Booked Passengers:
					<form:input path="bookedPassengers" />
				</div>
				<br>
				<div>
					Trip Status: <form:select path="tripStatus">  
        <form:option value="Starting" label="Starting"/>  
        <form:option value="Inprogress" label="Inprogress"/>  
        <form:option value="cancel" label="cancel"/>  
        </form:select>
				</div>
				<br>
			
			</form:form>
		</div>
	</div>
<div id="root">
		<div id="form">
			<form:form action="addpay" method="post" modelAttribute="paymentdetail">
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
			</form:form>
		</div>
	</div>
</body>
</html>