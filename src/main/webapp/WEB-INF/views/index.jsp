<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
<div><h1>User Login</h1></div>
<div><a href="/registration/getallregistrations">List</a></div>
<div><a href="/registration/addregform">Add</a></div>
<div><a href="/registration/updateregform?userId=">Update</a></div>
<div><a href="/registration/deletereg?userId=">Delete</a></div>
<div><a href="/registration/findbyuserid">FindById</a></div>
<div></div>
<div><h1>Package List</h1></div>
<div><a href="/package/getallpackages">Package List</a></div>
<div><a href="/package/addpackageform">Add PacKage</a></div>
<div><a href="/package/updatepackform?packageId=">Update Package</a></div>
<div><a href="/package/deletepack?packageId=">Delete package</a></div>
<div><a href="/package/findbyidpackform">FindById Package</a></div>
<div></div>
<div><h1>Trip Detail List</h1></div>
<div><a href="/tripdetail/getalltripdetails">TripDetails List</a></div>
<div><a href="/tripdetail/addtripdetailsform">Add TripDetails</a></div>
<div><a href="/tripdetail/updatetripdetailform?tripId=">Update TripDetails</a></div>
<div><a href="/tripdetail/deletebyidform?tripId=">Delete TripDetails</a></div>
<div><a href="/tripdetail/findbyidform?tripId=">FindById TripDetails</a></div>
<div><a href="/tripdetail/getpaymentdetailsbytripid?id=">FindPayment By TripId</a></div>

<div></div>
<div><h1>Payment List</h1></div>
<div><a href="/payment/getallpayments">Payment List</a></div>
<div><a href="/payment/addpaymentform">Add Payment</a></div>
<div><a href="/payment/updatepaymentform?paymentId=">Update Payment</a></div>
<div><a href="/payment/deletepayment?paymentId=">Delete Payment</a></div>
<div><a href="/payment/getpayments?paymentId=">FindById Payment</a></div>

<div></div>



</body>
</html>