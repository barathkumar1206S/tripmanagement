<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
</style>
</head>
<body>
<h3 align="center">FindAll PackageById form</h3>
	<div id="root">
		<div id="form" class="top">
			<form:form action="" method="post" modelAttribute="getpackage">
				 <div>
				<label class="heading-text" for="packageId">Package Id</label>
				<div>
					<form:input path="PackageId"  class="input-size"/>
				</div>
				</div>
				
				
				<div>
					<label class="heading-text" for="boardingPlace">Boarding Place</label>
				<div>
					<form:input path="boardingPlace"   placeholder = "Enter boarding place"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
					<label class="heading-text" for="destination">Destination</label>
				<div>
					<form:input path="destination"    placeholder = "Enter destinatination"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
					<label class="heading-text" for="packageType">Package Type</label>
				<div>
					<form:input path="packageType"   placeholder = "Enter packageType"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="amount">Amount</label>
				<div>
					<form:input path="amount"  required="true"  class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="noOfDays">No Of Days</label>
				<div>
					<form:input path="noOfDays"  class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="maxNoOfSeats">MaxNoOfSeats</label>
				<div>
					<form:input path="maxNoOfSeats"  required="true" class="input-size"/>
				</div>
				</div>
				
				
			<div>
				<label class="heading-text" for="startDate">startDate</label>
					<div>
					<form:input  type="date" path="startDate"  required="true"  class="input-size"/>
				</div>
				</div>
				
			<div>
				<label class="heading-text" for="endDate">EndDate</label>
					<div>
					<form:input  type="date" path="endDate"  required="true" class="input-size"/>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>