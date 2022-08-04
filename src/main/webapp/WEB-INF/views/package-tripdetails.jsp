<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PackageId Using Tripdetails</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="gettrippackages">
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
				
			</form:form>
		</div>
	</div>
	
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Trip Id</th>
					<th>Package Id</th> 
					<th>Start Date</th>
					<th>End Date</th>
					<th>Booked Passengers</th>
					<th>Trip Status</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tripdetails" items="${gettripdetails}">
					<tr>
						<td>${tripdetails.tripId}</td>
						<td>${tripdetails.packageId}</td>
						<td>${tripdetails.startDate}</td>
						<td>${tripdetails.endDate}</td>
						<td>${tripdetails.bookedPassengers}</td>
						<td>${tripdetails.tripStatus}</td>
						</tr>
                </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>