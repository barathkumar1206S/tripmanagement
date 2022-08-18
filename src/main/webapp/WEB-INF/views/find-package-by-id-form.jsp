<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Package Detail UsingBy Id</title>
<script type="text/javascript">
function maxNumberOfSeats() {
   
    
    if (document.myForm.maxNoOfSeats.value <= 0){
		alert("Seats not available!")
		return false
	}
	else
		return true
}

</script>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>


body {
    background-image: url("https://wallpapersmug.com/download/1366x768/e1e099/gradient-pattern-abstract.jpg"); 
    /* background-color: #a5edf3; */ 
    background-repeat: no-repeat;
    background-size: 1366px 650px;
    background-position: center top;
    position: relative;
}
</style>
</head>
<body>
	<h2 text-align= "center">Package Details</h2>
	<div id="root">
		<div id="form" id="form" class="top">
			<form:form action="" method="get" modelAttribute="getpackbyid" name="myForm">
				
				<div>
				<label class="heading-text" for="packageId">PackageId</label>
				<div>	
					<form:input path="packageId" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="boardingPlace">Boarding Place </label>			
				<div>		
					<form:input path="boardingPlace" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="destination">Destination</label>			
				<div>		
					<form:input path="destination" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="packageType">Package Type</label>			
				<div>	
					<form:input path="packageType" class="input-size" />
				</div>
				</div>
			
			    <div>
				<label class="heading-text" for="amount">Amount</label>			
				<div>
					<form:input path="amount" class="input-size" />
				</div>
				</div>

                <div>
				<label class="heading-text" for="noOfDays">No Of Days</label>			
				<div>	
					<form:input path="noOfDays" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="maxNoOfSeats">Max No Of Seats</label>			
				<div>
					<form:input path="maxNoOfSeats" id ="maxNoOfSeats" class="input-size" name="maxNoOfSeats" value=""/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="startDate">Start Date</label>			
				<div>		
					<form:input type="date" path="startDate" class="input-size" />
					</div>
					</div>
					
					<div>
				<label class="heading-text" for="endDate">End Date</label>			
				<div class="bottom">
					<form:input type="date" path="endDate" class="input-size" />
					</div>
					</div>
					
						<form:button class="button-style">
							<a href="/package/showpackages?id=${userId}">Back</a>
						</form:button>
						 <form:button class="button-style" onclick="return maxNumberOfSeats()">
							<a href="/tripdetail/addtripdetailsform?packageid=${packageId}&userId=${userId}">Next</a>
						</form:button> 
						
						
			</form:form>
		</div>
	</div>
</body>
</html>