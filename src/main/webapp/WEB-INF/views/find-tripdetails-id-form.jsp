<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find By Id Trip Details</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
</style>
</head>
<body>
	<h3 align="center">Trip Details Form</h3>
	<div id="root">
		<div id="form" class="top">
			<form:form action="gettripdetails" method="get"
				modelAttribute="gettripdetail">
				<div>
				<label class="heading-text" for="packageId">Package Id</label>
				<div>
					<form:input path="packageId"  class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="userId">UserId</label>
				<div>
					<form:input path="userId"  class="input-size" />
				</div>
				</div>
			
			    <div>
				<label class="heading-text" for="startDate">Start Date </label>
				<div>		
					<form:input type="date" path="startDate"  class="input-size" />
				</div>
				</div>
                 
                <div>
				<label class="heading-text" for="endDate">End Date</label>	
				<div>	
					<form:input type="date" path="endDate"  class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="bookedPassengers">Booked Passengers</label>	
				<div class="bottom">					
					<form:input path="bookedPassengers"  class="input-size" />
				</div>
				</div>

				<div class="bottom">
					Trip Status: <form:select path="tripStatus">  
        <form:option value="Starting" label="Starting"/>  
        <form:option value="Inprogress" label="Inprogress"/>  
        <form:option value="cancel" label="cancel"/>  
        </form:select>
				</div>

			</form:form>
		</div>
	</div>

</body>
</html>