<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ page import="com.chainsys.tripmanagement.businesslogic.Logic"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Trip Details</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
</style>
</head>
<body>
	<h3 align="center">Trip Details Update Form</h3>
	<div id="root">
		<div id="form" class="top">
			<form:form class="action" action="updatetripdetail" method="post"
				modelAttribute="updatetripdetailsform">
				<div>
				<label class="heading-text" for="tripId">Trip Id</label>
				<div>
					<form:input path="tripId" readonly="true" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="packageId">Package Id</label>
				<div>
					<form:input path="packageId" readonly="true" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="userId">User Id</label>
				<div>
					<form:input path="userId" readonly="true" class="input-size" />
				</div>
				</div>
			
			    <div>
				<label class="heading-text" for="startDate">Start Date </label>
				<div>		
					<form:input type="date" path="startDate" readonly="true" min="<%=Logic.getInstanceDate()%>"
					 class="input-size" />
				</div>
				</div>
                 
                <div>
				<label class="heading-text" for="endDate">End Date</label>	
				<div>	
					<form:input type="date" path="endDate" readonly="true" min="<%=Logic.getInstanceDate()%>"
					 class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="bookedPassengers">Booked Passengers</label>	
				<div class="bottom">					
					<form:input path="bookedPassengers"  title="Please enter number only"
                            pattern="^[0-9]+$" required="true" class="input-size" />
				</div>
				</div>

				<div class="bottom">
					Trip Status: <form:select path="tripStatus">  
        <form:option value="Starting" label="Starting"/>  
        <form:option value="Inprogress" label="Inprogress"/>  
        <form:option value="cancel" label="cancel"/>  
        </form:select>
				</div>
                 <div>
                    <form:button class="button-style">UPDATE</form:button>
                </div>
			</form:form>
		</div>
	</div>
</body>
</html>