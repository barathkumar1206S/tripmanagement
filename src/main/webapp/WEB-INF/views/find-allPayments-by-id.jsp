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
    
    background-image: url("https://w0.peakpx.com/wallpaper/83/55/HD-wallpaper-desert-ultra-nature-desert-landscape-background-colors-sand-africa-dunes-pastel-sahara-editing-morocco-erg-chebbi.jpg");
    background-repeat: no-repeat;
    background-size:1366px,768px;

}



</style>
</head>
<body>
<h2 align="center">Payments Form</h2>
	<div id="root">
		<div id="form" class="top">
			<form:form action="" method="post" modelAttribute="getpayment">

			<div>
					<label class="heading-text" for="paymentId">PaymentId</label>
					<div>
						<form:input  path="paymentId"  class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="fromDate">FromDate</label>
					<div>
						<form:input type="date" path="fromDate" class="input-size" />
					</div>
				</div>
				<div>
				<label class="heading-text" for="paymentAmout">PaymentAmount</label>
					<div>
					<form:input path="paymentAmout" class="input-size"/>
				</div>
				</div>
				<div>
					<label class="heading-text" for="tripId">TripId</label>
					<div>
						<form:input path="tripId" class="input-size" />
					</div>
				</div>
			<div>
					<label class="heading-text" for="userId">UserId</label>
					<div>
						<form:input path="userId"  class="input-size" />
					</div>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>