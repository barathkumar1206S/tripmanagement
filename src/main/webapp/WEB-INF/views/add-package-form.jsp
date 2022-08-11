<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trip Management System</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<h1></h1>
	<h3>Add Package form</h3>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addPackage">
				<div>
					PackageId :
					<form:input path="PackageId" />
				</div>
				
				<br>
				<div>
					Boarding Place :
					<form:input path="boardingPlace" />
				</div>
				<br>
				<div>
					Destination :
					<form:input path="destination" />
				</div>
				<br>
				<div>
					Package Type :
					<form:input path="packageType" />
				</div>
				<br>
				<div>
					Amount :
					<form:input  path="amount" />
				</div>
				<br>
				<div>
					No Of Days:
					<form:input path="noOfDays" />
				</div>
				<br>
				<div>
					Max No Of Seats :
					<form:input path="maxNoOfSeats" />
				</div>
				<br>
				
				<div>
				Start Date :
					<form:input  type="date" path="startDate" />
				</div>
				<br>
				<div>
				End Date :
					<form:input  type="date" path="endDate" />
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