<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Packages</title>

</head>

<body>
	<div style="margin-top: 40px; margin-right: 600px; font-size: 40px;">
     <label class="heading-text" for="chennaitogoa">Chennai To Goa</label>
			<div style="width: 1500px; margin-left: 1200px; font-size:20px;">
		<form action="getpackagebyid" method="get">
			<div>
					<input type="hidden" id="packageId" name="packageId" value=1 />
				
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
				
			</form>
		</div>
		</div>


	<div style="margin-top: 100px; margin-right: 600px; font-size: 40px;">
     <label class="heading-text" for="firstName">Chennai To Ladakh</label>
		<div style="width: 1500px; margin-left: 1200px;font-size:20px">
			<form action="getpackagebyid" method="get">
				<div>
					<input type="hidden" id="packageId" name="packageId" value=2 /> 
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
			</form>
		</div>
	</div>

	<div style="margin-top: 100px; margin-right: 600px; font-size: 40px;">
		<label class="heading-text" for="firstName">Chennai To Kashmir</label>
		<div style="width: 1500px; height: 100px; margin-left: 1200px;font-size:20px">
			<form action="getpackagebyid" method="get">
				<div>
					<input type="hidden" id="packageId" name="packageId" value=3 />
				</div>
				<div>
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>









