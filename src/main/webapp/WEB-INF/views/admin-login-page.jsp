<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
</head>
<body style="background-color:#3d403d; color:white;">
<div align="center">
	<form:form action="userpage" method="post" modelAttribute="login">
				<div>
					<label for="userId"> Admin Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<form:button>Adminlogin</form:button>
					
				</div>
				
				<a href="newuser">sign up</a>
				</form:form>
</div>
<div align="center">
     <div>${head}</div>
	 <div>${title}</div>
     <div>${message}</div>
     </div>
</body>
</html>