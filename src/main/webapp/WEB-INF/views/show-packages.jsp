<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>All Packages</title>
<style><%@include file ="/WEB-INF/css/showpackages.css"%>
</style>
</head>
<body>
<section>
	 <div class="images__card">
                <h2 class="center">Chennail To Goa</h2>
            </div>
		<form action="getpackagebyid" method="get">
			<div class="center">
					<input type="hidden" id="packageId" name="packageId" value=1 />
				
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
				
			</form>
		
 <div class="images__card1">
                <h2 class="center">Chennai To Ladakh</h2>
            </div>
			<form action="getpackagebyid" method="get">
				<div class="center">
					<input type="hidden" id="packageId" name="packageId" value=2 /> 
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
			</form>
		
	 <div class="images__card2">
                <h2  class="center">Chennai To Kashmir</h2>
            </div>
			<form action="getpackagebyid" method="get">
			<div>
					<input type="hidden" id="packageId" name="packageId" value=3 />
				</div>
				<div class="center"> 
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
				</form>
				
			 <div class="images__card3">
                <h2  class="center">Chennai To Manali</h2>
            </div>
			<form action="getpackagebyid" method="get">
			<div>
					<input type="hidden" id="packageId" name="packageId" value=4 />
				</div>
				<div class="center"> 
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
				</form>
				
				 <div class="images__card4">
                <h2  class="center">Chennai To sikkim</h2>
            </div>
			<form action="getpackagebyid" method="get">
			<div>
					<input type="hidden" id="packageId" name="packageId" value=5 />
				</div>
				<div class="center"> 
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
				</form>
				
				 <div class="images__card5">
                <h2  class="center">Chennai To Delhi</h2>
            </div>
			<form action="getpackagebyid" method="get">
			<div>
					<input type="hidden" id="packageId" name="packageId" value=6 />
				</div>
				<div class="center"> 
					<input type="hidden" name="userId" id="userId" value="${userId}">
					<input type="submit" value="BookNow" />
				</div>
				</form>
				
		
	</section>
</body>
</html>