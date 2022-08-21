<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file ="/WEB-INF/css/adminhome.css"%>
body
{
background-image:url("https://picfiles.alphacoders.com/255/255875.jpg"); 
	
	background-repeat: no-repeat;
	background-size: 1366px 650px;
	background-position: center top;
	position: relative;
}
</style>
</head>
<body>
	<nav>
	<ul>
		<li><a href="#">User Details</a>
				<ul class="ul-2">
					<li><a href="/registration/updateregform?userId=${userId}">Update</a></li>
				</ul></li>
			</ul>
			<ul>
			<li><a href="#">Package Details</a>
				<ul class="ul-2">
					<li><a href="/package/showpackages?userId=${userId}">Packages List</a></li>
				</ul></li>
				<ul>
				
			<li><a href="#">Trip Details</a>
				<ul class="ul-2">
					<li><a href="/tripdetail/getuseridbydetails?userId=${userId}">Trip List</a></li>
					
				</ul></li>
			</ul>
	</nav>

</body>
</html>



