<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>

body {
    background-color: #a5edf3;
}

</style>
</head>
<body>
<h3 class="center">Trip Details Form</h3>
	<div id="root">
		<div id="form" class="top">
			<form:form class="action" action="addform" method="post"
				modelAttribute="addtripform">
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
					<form:input type="date" path="startDate" readonly="true" class="input-size" />
				</div>
				</div>
                 
                <div>
				<label class="heading-text" for="endDate">EndDate</label>	
				<div>	
					<form:input type="date" path="endDate" readonly="true" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="bookedPassengers">Booked Passengers</label>	
				<div class="bottom">					
					<form:input path="bookedPassengers" title="Please enter number only"
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
					<input type="submit" value="Submit" class="submit"  />
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>