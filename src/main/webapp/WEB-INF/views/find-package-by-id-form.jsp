<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Package Detail UsingBy Id</title>
</head>
<body>
	<h1>Trip Management System</h1>
	<h3>Package ById details</h3>
	<div id="root">
		<div id="form">
			<form:form action="getpackagebyid" method="post" modelAttribute="getpackbyid">
				<div>
					PackageId :
					<form:input path="packageId" />
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
				</form:form>
		</div>
	</div>

</body>
</html>