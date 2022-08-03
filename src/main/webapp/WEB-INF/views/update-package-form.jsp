<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Package</title>
</head>
<body>
<h1>Update Package Form</h1>
    <div id="root">
        <div id="form">
            <form:form action="updatepackform" method="post" modelAttribute="updatepackageform">
                 <div>
                PackageId :<form:input path="PackageId" />
                </div>
                <br>
                <div>
                Boarding Place : <form:input path="boardingPlace" />
                </div>
                <br>
                <div>
                Destination : <form:input path="destination" />
                </div>
                <br>
                <div>
                Package Type : <form:input path="packageType"  />
                </div>
                <br>
                <div>
               Amount: <form:input  path="amount" />
                </div>
                <br>
                <div>
                No Of Days : <form:input path="noOfDays"  />
                </div>
                <br>
                <div>
               Max No Of Seats : <form:input path="maxNoOfSeats" />
                </div>
                <br>
                <div>
                <form:button>Update</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>