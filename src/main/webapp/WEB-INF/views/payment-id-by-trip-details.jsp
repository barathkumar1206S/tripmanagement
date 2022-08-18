<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payment Id Trip Details</title>
</head>
<body>
<div id="root">
	<div id="form" class="top">

			<form:form action="addtripdetail" method="post"
				modelAttribute="tripdetail">
				<div>
				<label class="heading-text" for="packageId">Package Id</label>
				<div>
					<form:input path="packageId" readonly="true" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="userId">UserId</label>
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
				<label class="heading-text" for="endDate">End Date</label>	
				<div>	
					<form:input type="date" path="endDate" readonly="true" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="bookedPassengers">Booked Passengers</label>	
				<div class="bottom">					
					<form:input path="bookedPassengers" readonly="readonly" title="Please enter number only"
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
			
			</form:form>
		</div>
	</div>
<div id="root">
		<div id="form">
			<form:form action="addpay" method="post" modelAttribute="paymentdetail">
				<div>
					PaymentId :
					<form:input path="paymentId" />
				</div>
				<br>
				<div>
					FromDate :
					<form:input type="date" path="fromDate" />
				</div>
				<br>
				<div>
					PaymentAmout :
					<form:input path="paymentAmout" />
				</div>
				<br>
				<div>
					TripId:
					<form:input  path="tripId" />
				</div>
				<br>
				<div>
					UserId:
					<form:input path="userId" />
				</div>
				<br>
			</form:form>
		</div>
	</div>
</body>
</html>