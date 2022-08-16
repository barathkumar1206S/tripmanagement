<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>All Packages</title>
<style><%@include file ="/WEB-INF/css/list.css"%>

</style>
</head>
<body>
	<div id="table root" align="center">
		<table>
			<thead>
				<tr>
					<th>packageId</th>
					<th>boardingPlace</th>
					<th>destination</th>
					<th>packageType</th>
					<th>amount</th>
					<th>noOfDays</th>
					<th>maxNoOfSeats</th>
					<th>StartDate</th>
					<th>EndDate</th>
					<th>Edit</th>
                    <th>Delete</th>
                    <th>View</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tripPackage" items="${allPackage}">
					<tr>
						<td>${tripPackage.packageId}</td>
						<td>${tripPackage.boardingPlace}</td>
						<td>${tripPackage.destination}</td>
						<td>${tripPackage.packageType}</td>
						<td>${tripPackage.amount}</td>
						<td>${tripPackage.noOfDays}</td>
						<td>${tripPackage.maxNoOfSeats}</td>
						<td>${tripPackage.startDate}</td>
						<td>${tripPackage.endDate}</td>
						<td><a href="updatepackform?packageId=${tripPackage.packageId}">Edit</a></td>
                        <td><a href="deletepack?packageId=${tripPackage.packageId}">Delete</a></td>
                        <td><a href="getpackage?packageId=${tripPackage.packageId}">View</a></td>
						
						
						
					</tr>
                </c:forEach>
			</tbody>
		</table>
		<div class="btn_align">
            <a href="addpackageform"><button class="button">ADD PACKAGE
                </button></a>
	</div>
</body>
</html>