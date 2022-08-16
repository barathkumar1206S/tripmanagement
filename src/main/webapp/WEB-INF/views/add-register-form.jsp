<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NEW REGISTRATION</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>


body {
    /* background-image:url(https://lh5.googleusercontent.com/proxy/YXR3HSsNAGzGBwz1EHBaA_56py2o7Vzt7fFHRwRft7yrFZwHdXqB_4r8wO3DosViVWDWZQRQCbJZPNHknU70Q0epxAu5eljcjlG535LIFAojMU-e8quIUuTrOpDfMF1nyDGQ93GqJvTbzMyxRh00oBhKuff8xdA); */
    background-color: #a5edf3; 
    background-repeat: no-repeat;
    background-size: 1366px 650px;
    background-position: center top;
    position: relative;
}


</style>
</head>
<body>
	<h3 align="center" >User Registration form</h3>
	<div id="root">
		<div id="form" class="top">
			<form:form class="action" action="add" method="post" modelAttribute="addregister">
				
				<div>
				<label class="heading-text" for="firstName">First Name</label>
				<div>
				<form:input path="firstName" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter First Name"
					 class="input-size"/>
				</div>
				</div>
				
				
				<div>
				<label class="heading-text" for="lastName">Last Name</label>
				<div>
				
					<form:input path="lastName" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter last Name"
					 class="input-size"/>
				</div>
				</div>
				<div>
					Gender :
					<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
				</div>
				
				<div>
				<label class="heading-text" for="dob">DateOfBirth</label>
				<div>
					<form:input type="date" path="dob" required="true" class="input-size"/>
				</div></div>
				<div>
				<label class="heading-text" for="phoneNumber">PhoneNumber</label>
				<div>
					<form:input path="phoneNumber" name="phoneNumber" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number" placeholder = "Enter Phone Number" required="true" size="10" class="input-size" />
				</div>
				</div>
				<div>
				<label class="heading-text" for="email">Email</label>
				<div>
					<form:input path="email" name="email" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" title ="Enter a valid email welcome03@gmail.com" placeholder = "Enter a Email" required="true" class="input-size" />
				</div>
				</div>
				<div>
				<label class="heading-text" for="password">Password</label>
				<div>
					<form:input  path="password"  pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" title="Enter a valid password Welcomes@03 " type="password" required="true"
					class="input-size" />
				</div>
				</div>
				<div>
					Role:
					<form:radiobutton path="role" value="user" />
					user
					<form:radiobutton path="role" value="admin" />
					admin
				</div>
				<div >
					<input type="submit" value="Submit" /> <input type="reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>