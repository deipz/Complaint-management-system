<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
     	background-image: url('back.jpg');
}
form{
    
     margin: 200px;
    width: 70%;
}
</style>
<title>INSTITUTE COMPLAINT MANAGEMENT SYSTEM</title>
</head>
<body onload="showError()">
	  <script>
	  	var flag="";
	  	function showError() { 
	  		var flag = window.location.search.substring(6);
	  		if(flag == "") {
		  		  document.getElementById("errorpanel").style.visibility="hidden";  
	  		} else {
	  			document.getElementById("errorpanel").style.visibility="visible";
	  		}
	  	}
	  </script>
	<div id="login">
		
		<form action="admin_validate.jsp" method="get">
		Complaint Management System<br>
			Department: <select name="name">
			<option value="CIVIL">CIVIL DEPARTMENT</option>
			<option value="ELECTRICAL">ELECTRICAL DEPARTMENT</option>
			<option value="WATER SUPPLY">WATER DEPARTMENT</option>
			</select><br>
			Password: <input type="password" name="password"><br>
			<input type="submit" value="Submit"><br>
			
		</form>
	</div>
	<div id="errorpanel">
		"Incorrect Username or Password"
	</div>

</body>
</html>