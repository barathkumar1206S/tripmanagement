<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Registration</title>
<style ><%@include file ="/WEB-INF/css/alljsp.css"%>

body {
    background-image: url("https://images.pexels.com/photos/1831234/pexels-photo-1831234.jpeg?auto=compress&cs=tinysrgb&w=600");
    background-repeat: no-repeat;
    background-size:1366px,768px;
}

</style>
<script>
function msg()
{
	alert("Update Successfully....!");
	alert("Login again...");
	}
</script>
</head>
<body>
    <div id="root">
        <div id="form" class="top">
            <form:form class="action" action="update" method="post" modelAttribute="updateregister">
                 <div>
                
				<label class="heading-text" for="userId">User Id</label>
                 <div>
              <form:input path="userId"  class="input-size"/>
                </div>
                </div>
                
               <div>
				<label class="heading-text" for="userName">User Name</label>
				<div>
				
					<form:input path="userName" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  placeholder = "Enter First Name"
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
				<label class="heading-text" for="dob">Date Of Birth</label>
				<div>
					<form:input type="date" path="dob" max='2022-08-23' required="true" class="input-size"/>
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="phoneNumber">Phone Number</label>
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
					<form:input  path="password" name="password" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" title="Enter a valid password Welcomes@03 "  required="true"
					class="input-size" />
				</div>
				</div>
				
	
				
				<div>
                    <form:button class="button-style" onclick="msg()" >UPDATE</form:button>
                </div>
			</form:form>
		</div>
	</div>
</body>
</html>