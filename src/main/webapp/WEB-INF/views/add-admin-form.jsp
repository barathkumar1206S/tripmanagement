<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>NEW REGISTRATION</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
    
    background-image: url("https://w0.peakpx.com/wallpaper/83/55/HD-wallpaper-desert-ultra-nature-desert-landscape-background-colors-sand-africa-dunes-pastel-sahara-editing-morocco-erg-chebbi.jpg");
    background-repeat: no-repeat;
    background-size:1366px,768px;

}
</style>
</head>
<body>
	<h3 class="center">Admin Registration form</h3>
	
	<div id="root">
		<div id="form" class="top">
			<form:form class="action" action="addadmin" method="post"
				modelAttribute="addadminregister">
				<div>
					<label class="heading-text" for="userName">Admin Name</label>
					<div>
						<form:input path="userName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter UserName" class="input-size" />
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
					<label class="heading-text" for="dob">Date Of Birth</label>
					<div>
						<form:input type="date" path="dob" max='2022-08-23' required="true"
							class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" name="phoneNumber"
							pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number"
							placeholder="Enter Phone Number" required="true" size="10"
							class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="email">Email</label>
					<div>
						<form:input path="email" name="email"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid email "
							placeholder="Enter a Email" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="password">Password</label>
					<div>
						<form:input path="password"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid password  " type="password"
							required="true" class="input-size" />
					</div>
				</div>
				<div>
						<form:hidden path="role" name="role" value="admin" />
				</div>
				<div>
					<input type="submit" value="Submit" /> <input type="reset">
				</div>
			</form:form>
		</div>
	</div>
	<div style="color:red;position: absolute; right: 620px;bottom: 168px;  margin-left: 9px; text-align: center;">${error}</div>
</body>
</html>
 