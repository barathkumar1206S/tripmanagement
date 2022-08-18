<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>LogIn Page</title>
<style><%@include file ="/WEB-INF/css/login.css"%>
body {
    background-image:
        linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url("https://wallpaperaccess.com/full/2314950.jpg");
    background-repeat: no-repeat;
    background-size: 1400px 700px;
    
}

</style>
</head>
<body>
	
	 <div id="root">
		<div id="form" align="center">
		
		
	<form:form action="userpage" method="post" modelAttribute="login">
 <h1 >LOGIN</h1>
	<table>
				<div>
					<label for="userId" class="label"> UserId</label>
					<div>
						<form:input path="userId" placeholder="userId" class="input-size"/>
					</div>
				</div>
				<div>
					<label for="password" class="label">Password</label>
					<div>
						<form:input path="password"  placeholder="password"  pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" title="Enter a valid password Welcomes@03 " type="password" required="true"
					class="input-size" />
					</div>
				</div>
				</table>
				<div class="belowinput-size">
				<tr>
				<td><form:button class="login-form">login</form:button>	</td>	
				<td><form:button class="login-form" style="margin-left: 12px;">
                                <a href="newuser">SignIn</a></form:button></td>
                               
                                </tr>
                                 </div>	
                                
   	
				</form:form>
				</div>
</div>

<div align="center">
     <div>${head}</div>
	 <div>${title}</div>
     <div>${message}</div>
     </div>
</body>
</html>