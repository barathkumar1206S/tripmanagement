<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>AdminLoginDemo</title>
<style><%@include file ="/WEB-INF/css/logindemo.css"%>
body {
    font-family: "Open Sans";
    color: #fff;
}
</style>
</head>
<body>
    <section>
        <div class="form-container">
            <h1>Login form</h1>
            <form:form action="userpage" method="post" modelAttribute="login">
                
                <div class="control">
					<label class="heading-text" for="email">Email</label>
					
						<form:input path="email" name="email"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid email welcome03@gmail.com"
							placeholder="Enter Email" required="true" class="input-size" />
					
				</div>
                <div class="control">
                    <label for="password" class="label">Password :</label>
                    <form:input path="password" placeholder="Password"
                        type="password" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
                        title="Enter a valid password Welcomes@03" required="true"
                        class="input" />
                </div>
                <div class="control">
                    <input type="submit" value="Login">
                </div>
            </form:form>
          <div>${message}
</div>
        </div>
    </section>

</body>
</html>