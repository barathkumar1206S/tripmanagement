<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trip Management System</title>
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
					<form:input path="BoardingPlace" />
				</div>
				<br>
				<div>
					Destination :
					<form:input path="Destination" />
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
					<input type="submit" value="Submit" /> 
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>