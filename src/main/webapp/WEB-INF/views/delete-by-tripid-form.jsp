<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete By Id Form </title>
</head>
<body>
<form action="deletebyid" method="get">
		<div>
			tripId :<input id="tripId" name="tripId" />
		</div>
		<input type="submit" value="submit"/>
	</form>

</body>
</html>