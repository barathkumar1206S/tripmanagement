<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trip Details</title>
</head>
<body>
<h1>Trip Management System</h1>
	<h3>Trip Details Update Form</h3>
	<div id="root">
		<div id="form">
			<form:form action="updatetripdetail" method="post"
				modelAttribute="updatetripdetailsform">
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
				<div>
					<input type="submit" value="update" />
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>