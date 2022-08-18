<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Registration Payments Details</title>
</head>
<body>
	<div id="root">
			<div id="form" class="top">
	
			<form:form action="" method="post" modelAttribute="getregistration">
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
				<label class="heading-text" for="dob">DateOfBirth</label>
				<div>
					<form:input type="date" path="dob" required="true" class="input-size"/>
				</div>
				</div>
				
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
					<form:input path="password" name="password" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" title="Enter a valid password Welcomes@03 " type="password" required="true"
					class="input-size" />
				</div>
				</div>
				
				<div>
				<label class="heading-text" for="role">Role</label>
				<div>
					
					<form:radiobutton path="role" value="user" />
					user
					<form:radiobutton path="role" value="admin" />
					admin
				</div>
</div>
			</form:form>
		</div>
	</div>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Payment Id</th>
					<th>From Date</th> 
					<th>Payment Amount</th>
					<th>Trip Id</th>
					<th>User Id</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payment" items="${getpayments}">
					<tr>
						<td>${payment.paymentId}</td>
						<td>${payment.fromDate}</td>
						<td>${payment.paymentAmout}</td>
						<td>${payment.tripId}</td>
						<td>${payment.userId}</td>
			
						
						
						
					</tr>
                </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>