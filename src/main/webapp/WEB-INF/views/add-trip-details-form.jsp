<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Trip Details form</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<h1>Trip Management System</h1>
	<h3>Trip Details Form</h3>
	<div id="root">
		<div id="form">
			<form:form action="addtripdetail" method="post"
				modelAttribute="addtripdetails">
				<br>
				Package Id
				<div>
					<form:input path="packageId" readonly="true"/>
				</div>
				UserId
				<div>
					<form:input path="userId" readonly="true"/>
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
					<input type="submit" value="Submit" />
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>