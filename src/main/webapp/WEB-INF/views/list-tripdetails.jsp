<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>TripDetails List</title>
<style><%@include file ="/WEB-INF/css/list.css"%>

</style>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Trip Id</th>
					<th>Package Id</th>
					<th>User Id</th> 
					<th>Start Date</th>
					<th>End Date</th>
					<th>Booked Passengers</th>
					<th>Trip Status</th>
					<th>Edit</th>
                    <th>Delete</th>
                    <th>View</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tripdetails" items="${alltripdetails}">
					<tr>
						<td>${tripdetails.tripId}</td>
						<td>${tripdetails.packageId}</td>
				    	<td>${tripdetails.userId}</td>
						<td>${tripdetails.startDate}</td>
						<td>${tripdetails.endDate}</td>
						<td>${tripdetails.bookedPassengers}</td>
						<td>${tripdetails.tripStatus}</td>
							<td><a href="updatetripdetailform?tripId=${tripdetails.tripId}">Edit</a></td>
                        <td><a href="deletebyid?tripId=${tripdetails.tripId}">Delete</a></td>
                        <td><a href="gettripdetails?tripId=${tripdetails.tripId}">View</a></td>
						</tr>
                </c:forEach>
			</tbody>
		</table>
		<div class="btn_align">
            <a href="addtripform"><button class="button">ADD TRIPDETAILS
                </button></a>
	</div>
</body>
</html>