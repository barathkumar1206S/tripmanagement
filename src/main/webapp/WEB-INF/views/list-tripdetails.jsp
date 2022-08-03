<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
				<c:forEach var="tripdetails" items="${alltripdetails}">
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