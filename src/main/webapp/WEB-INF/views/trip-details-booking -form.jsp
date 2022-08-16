<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
           <h1>Package Chennai to Goa Trip Details</h1>  
			<form:form action="gettripdetails" method="get">
				<div>
					TripId :
					<form:input path="tripId" />
				</div>
				<br>
				<div>
					Package Id :
					<form:input path="packageId" />
				</div>
				<br>
				<div>
					Start Date :
					<form:input type="date" path="startDate" />
				</div>
				<br>
				<div>
					End Date :
					<form:input type="date" path="endDate" />
				</div>
				<br>
				<div>
					Booked Passengers:
					<form:input path="bookedPassengers" />
				</div>
				<br>
				<div>
					Trip Status: <form:select path="tripStatus">  
        <form:option value="Starting" label="Starting"/>  
        <form:option value="Inprogress" label="Inprogress"/>  
        <form:option value="cancel" label="cancel"/>  
        </form:select>
				</div>
				<br>
				<div>
					<input type="submit" value="update" />
				</div>
			</form:form>
		

</body>
</html>
