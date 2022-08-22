<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@ page import="com.chainsys.tripmanagement.businesslogic.Logic"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Trip Management System</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}

 body {
    background-image: url("https://www.teahub.io/photos/full/29-297120_beach-underwater-ocean-scenery-hd-wallpaper2016-under-water.jpg"); 
    background-size: 1366px 768px;
  

}
</style>
</head>
<body>
	<h3 class="center">Add Package form</h3>
	<div id="root">
		<div id="form" class="form">
			<form:form action="add" method="post" modelAttribute="addPackage">
				<div>
				<label class="heading-text" for="packageId">Package Id</label>
				<div>
					<form:input path="PackageId" title="Please enter number only"
                            pattern="^[0-9]+$" required="true" class="input-size"/>
				</div>
				</div>
				
				
				<div>
					<label class="heading-text" for="boardingPlace">Boarding Place</label>
				<div>
					<form:input path="boardingPlace" readonly="true" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter boarding place"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
					<label class="heading-text" for="destination">Destination</label>
				<div>
					<form:input path="destination" readonly="true" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter destinatination"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
					<label class="heading-text" for="packageType">Package Type</label>
				<div>
					<form:input path="packageType"  readonly="true" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter packageType"
					 class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="amount">Amount</label>
				<div>
					<form:input path="amount" title="Please enter number only"
                          readonly="true"  pattern="^[0-9]+$" required="true" class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="noOfDays">No Of Days</label>
				<div>
					<form:input path="noOfDays" title="Please enter number only"
                           readonly="true" pattern="^[0-9]+$" required="true" class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="maxNoOfSeats">Max No Of Seats</label>
				<div>
					<form:input path="maxNoOfSeats" title="Please enter number only"
                          readonly="true"  pattern="^[0-9]+$" required="true" class="input-size"/>
				</div>
				</div>
				
				
			<div>
				<label class="heading-text" for="startDate">start Date</label>
					<div>
					<form:input  type="date" path="startDate" min="<%=Logic.getInstanceDate()%>" readonly="true" class="input-size"/>
				</div>
				</div>
				
			<div>
				<label class="heading-text" for="endDate">End Date</label>
					<div>
					<form:input  type="date" path="endDate" min="<%=Logic.getInstanceDate()%>" readonly="true" class="input-size"/>
				</div>
				</div>
				
				<div>
					<input type="submit" value="Submit" class="submit" /> 
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
