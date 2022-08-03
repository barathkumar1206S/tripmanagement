<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<h1>Trip Management System</h1>
	<h3>User Registration form</h3>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addregister">
				<div>
					UserId :
					<form:input path="userId" />
				</div>
				<br>
				<div>
					First Name :
					<form:input path="firstName" />
				</div>
				<br>
				<div>
					Last Name :
					<form:input path="lastName" />
				</div>
				<br>
				<div>
					Gender :
					<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
				</div>
				<br>
				<div>
					Dob :
					<form:input type="date" path="dob" />
				</div>
				<br>
				<div>
					Phone Number :
					<form:input path="phoneNumber" name="phoneNumber" size="10" />
				</div>
				<br>
				<div>
					Email :
					<form:input path="email" />
				</div>
				<br>
				<br>
				<div>
					Password :
					<form:password path="password" />
				</div>
				<br>
				<div>
					Role:
					<form:radiobutton path="role" value="user" />
					user
					<form:radiobutton path="role" value="admin" />
					admin
				</div>
				<br>
				<div>
					<input type="submit" value="Submit" /> <input type="reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>