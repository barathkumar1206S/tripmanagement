<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>AdminHomePage</title>
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
		<li><a href="#">UserDetails</a>
				<ul class="ul-2">
					<li><a href="/registration/getallregistrations">List</a></li>
					<li><a href="/registration/addregform">Add</a></li>
				</ul></li>
			
			<li><a href="#">PackageList</a>
				<ul class="ul-2">
					<li><a href="/package/getallpackages">Package List</a></li>
					<li><a href="/package/addpackageform">Add PacKage</a></li>
				</ul></li>
				
			<li><a href="#">TRIPDETAILS</a>
				<ul class="ul-2">
					<li><a href="/tripdetail/getalltripdetails">TripDetails
							List</a></li>
					<li><a href="/tripdetail/addtripform">Add
							TripDetails</a></li>
				</ul></li>

			<li><a href="#">PaymentDetails</a>
				<ul class="ul-2">
					<li><a href="/payment/getallpayments">Payment List</a></li>
					<li><a href="/payment/addpaymentform">Add Payment</a></li>

				</ul></li>
				</ul>
	</nav>

</body>
</html>






