<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Package</title>
<style ><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
    background-image: url("https://www.teahub.io/photos/full/29-297120_beach-underwater-ocean-scenery-hd-wallpaper2016-under-water.jpg"); 
    background-size: 1366px 768px;
  
}
</style>
</head>
<body>
    <div id="root">
        <div id="form" class="top">
            <form:form class="action"  action="updatepackform" method="post" modelAttribute="updatepackageform">
                 <div>
				<label class="heading-text" for="packageId">Package Id</label>
				<div>
					<form:input path="PackageId" title="Please enter number only"
                            pattern="^[0-9]+$" required="true"  class="input-size"/>
				</div>
				</div>
				
				
				<div>
					<label class="heading-text" for="boardingPlace">Boarding Place</label>
				<div>
					<form:input path="boardingPlace"  pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter boarding place"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
					<label class="heading-text" for="destination">Destination</label>
				<div>
					<form:input path="destination"  pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter destinatination"
					 class="input-size"/>
				</div>
				</div>
				
				<div>
					<label class="heading-text" for="packageType">Package Type</label>
				<div>
					<form:input path="packageType"  pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter packageType"
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
					<form:input path="noOfDays" title="Please enter number only"
                            pattern="^[0-9]+$" required="true" class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="maxNoOfSeats">MaxNoOfSeats</label>
				<div>
					<form:input path="maxNoOfSeats" title="Please enter number only"
                            pattern="^[0-9]+$" required="true" class="input-size"/>
				</div>
				</div>
				
				
			<div>
				<label class="heading-text" for="startDate">start Date</label>
					<div>
					<form:input  type="date" path="startDate"  required="true"  class="input-size"/>
				</div>
				</div>
				
			<div>
				<label class="heading-text" for="endDate">End Date</label>
					<div>
					<form:input  type="date" path="endDate"  required="true" class="input-size"/>
				</div>
				</div>
				
				<div>
                    <form:button class="button-style">UPDATE</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>