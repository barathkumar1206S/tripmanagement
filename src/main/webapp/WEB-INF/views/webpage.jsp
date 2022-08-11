<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
<style>
body {
	background-image: url("https://wallpaperaccess.com/full/706919.jpg");
	background-repeat: no-repeat;
	background-size: 1366px 650px;
	background-position: center top;
	position: relative;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
	white-space:nowrap;
}

ul li {
	list-style: none;
	margin-left: 41px;
	margin-top: -8px;
	font-size: 20px;
}

}
ul li a {
	text-decoration: none;
	color: #0e0e0e;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
	padding: 20x 10px;
}

ul li a:hover {
	color: #0db1a1;
}

.menu{
width:200px;
float: left;
height:50px;
margin-top:20px;
margin-left:70%;
}
</style>

</head>
<body>

	<div class="menu">

		<ul>
			<li><a href="#">HOME</a></li>
			<li><a href="/home/login">LOGIN</a></li>
			<li><a href="#">CONTACT US</a></li>
		</ul>
	</div>


</body>
</html>