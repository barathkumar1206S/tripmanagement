<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Register</title>
</head>
<body>
<body>
    <div id="root">
        <div id="form">
            <form:form action="getregistration" method="post" modelAttribute="getregistration">
                 <div>
                UserId :<form:input path="userId" readonly="true"/>
                </div>
                <br>
                <div>
                First Name : <form:input path="firstName" readonly="true" />
                </div>
                <br>
                <div>
                Last Name : <form:input path="lastName" readonly="true" />
                </div>
                <br>
                <div>
                Gender : <form:radiobutton path="gender" value="Male" readonly="true"/>Male
                         <form:radiobutton path="gender" value="Female" readonly="true" />Female
                </div>
                <br>
                <div>
                Dob : <form:input type="text" path="dob" readonly="true" />
                </div>
                <br>
                <div>
                 Phone Number : <form:input path="phoneNumber" name="phoneNumber" size="10" readonly="true"/>
                </div>
                <br>
                <div>
                Email : <form:input path="email" readonly="true"/>
                </div>
                <br>
                <br>
                <div>
                Password : <form:password path="password"  readonly="true" />
                </div>
                <br>
                <div>
                Role:<form:radiobutton path="role" value="user" readonly="true"/>user
                         <form:radiobutton path="role" value="admin" readonly="true"/>admin
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>