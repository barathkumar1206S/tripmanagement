<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn Page</title>
<style>
body {
    background-image:
        linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url("https://31.media.tumblr.com/41c01e3f366d61793e5a3df70e46b462/tumblr_n4vc8sDHsd1st5lhmo1_1280.jpg");
    background-repeat: no-repeat;
    background-size: 1400px 700px;
    
}
.login-form{
width: 75px;
    height: 30px;
    font-size: 17px;
    background-color: lightblue;
    border: 1px solid blue;
    border-radius: 3px;
    color: blue;
}
</style>
</head>
<body>
	<div>
		<div id="form" align="center">
		
		
	<form:form action="userpage" method="post" modelAttribute="login">
 <h1 style="font-size: 68px;color: antiquewhite;">LOGIN</h1>
	<table>
				<div>
					<label for="userId" style="font-size: 35px; color: antiquewhite;"> User Id</label>
					<div>
						<form:input path="userId" placeholder="userId" style="width: 20%;height: 35px;margin-left: 20px;font-size: 17px;"/>
					</div>
				</div>
				<div>
					<label for="password" style="font-size: 35px; color: antiquewhite;">Password</label>
					<div>
						<form:input type="password" path="password" style="width: 20%;height: 35px;margin-left: 20px;font-size: 17px;"/>
					</div>
				</div>
				</table>
				<div style="margin-top: 20px;margin-left: 42px;">
				<tr>
				<td><form:button class="login-form">login</form:button>	</td>	
				<td><form:button class="login-form" style="margin-left: 12px;">
                                <a href="newuser">Sign Up</a></form:button></td>
                               
                                </tr>
                                 </div>	
                                 <div id="root">
   	
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