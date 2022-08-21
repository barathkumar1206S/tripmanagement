
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find By Id Trip Details</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px;
width:100%;
cellpadding:2px;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<div id="table root">
		<table class="table-size">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>Trip Id</th>
					<th>Package Id</th>
					<th>User Id</th> 
					<th>Start Date</th>
					<th>End Date</th>
					<th>Booked Passengers</th>
					<th>Trip Status</th>
									</tr>
			</thead>
			<tbody>
				<c:forEach var="tripdetails" items="${alluserdetails}">
					<tr>
						<td>${tripdetails.tripId}</td>
						<td>${tripdetails.packageId}</td>
				    	<td>${tripdetails.userId}</td>
						<td>${tripdetails.startDate}</td>
						<td>${tripdetails.endDate}</td>
						<td>${tripdetails.bookedPassengers}</td>
						<td>${tripdetails.tripStatus}</td>
							
						</tr>
                </c:forEach>
			</tbody>
		</table>
		
	</div>
	</div>

			

</body>
</html>