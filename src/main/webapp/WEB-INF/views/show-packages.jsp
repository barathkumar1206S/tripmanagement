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
<div align="center">
	Chennai to Goa
	<form action="getpackagebyid" method="get">
		<div>
			<input type="hidden" id="packageId" name="packageId" value=1 />
		</div>
		<input type="hidden" name="userId" id="userId" value="${userId}">
		<input type="submit" value="pack1"/>
	</form>
	Chennai to Ladakh
	<form action="getpackagebyid" method="get">
		<div>
			<input type="hidden" id="packageId" name="packageId" value=2 />
		</div>
		<input type="hidden" name="userId" id="userId" value="${userId}">
		<input type="submit" value="pack2"/>
	</form>
		Chennai to kashmir
	<form action="getpackagebyid" method="get">
		<div>
			<input type="hidden" id="packageId" name="packageId" value=3 />
		</div>
		<input type="hidden" name="userId" id="userId" value="${userId}">
		<input type="submit" value="pack3"/>
		
		
	</form>
	</div>
</body>
</html>