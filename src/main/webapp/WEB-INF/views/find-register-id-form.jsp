<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find RegisterById</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
    
    background-image: url("https://w0.peakpx.com/wallpaper/83/55/HD-wallpaper-desert-ultra-nature-desert-landscape-background-colors-sand-africa-dunes-pastel-sahara-editing-morocco-erg-chebbi.jpg");
    background-repeat: no-repeat;
    background-size:1366px,768px;

}
</style>
</head>
<body>
    <div id="root">
        <div id="form" class="top">
            <form:form action="getregistration" method="post" modelAttribute="getregistration">
                 <div>
                
				<label class="heading-text" for="userId">User Id</label>
                 <div>
              <form:input path="userId"  class="input-size"/>
                </div>
                </div>
                
            
				
				
				<div>
				<label class="heading-text" for="userName">UserName</label>
				<div>
				
					<form:input path="userName"  placeholder = "Enter Your Name"
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
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="phoneNumber">PhoneNumber</label>
				<div>
					<form:input path="phoneNumber" name="phoneNumber"  placeholder = "Enter Phone Number" required="true" size="10" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="email">Email</label>
				<div>
					<form:input path="email" name="email"  placeholder = "Enter a Email" required="true" class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="password">Password</label>
				<div>
					<form:input path="password" name="password" 
					class="input-size" />
				</div>
				</div>
					<div>
						<form:hidden path="role" name="role" value="user" />
				</div>
				<form:button class="button-style">
                            <a href="/home/login">Next</a>
                        </form:button>
                       
                      
            </form:form>
        </div>
    </div>
</body>
</html>