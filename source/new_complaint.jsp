<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
     	background-image: url('back.jpg');
}
form{
    
     margin: 200px;
    width: 70%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Management System</title>
</head>
<body>
<form action="complaint_entry.jsp" method="get">
Enter the complaint details<br>
To: <select id="dept" name="dept">
  <option value=civil>CIVIL DEPARTMENT</option>
  <option value=elec>ELECTRICAL DEPARTMENT</option>
  <option value=water>WATER DEPARTMENT</option>
</select>  <br>
Place: <select id="place" name="place">
	<option value=cautley>CAUTLEY BHAVAN</option>
	<option value=library>LIBRARY</option>
	<option value=hall>CONVOCATION HALL</option>
</select><br>
Fault:
<textarea cols="30" rows="1" type="text" id="content" maxlength=
"145" name="fault" >
</textarea><br>

Description:
<textarea cols="30" rows="4" type="text" id="content" maxlength=
"145" name="desc" >
</textarea><br>
<input type="submit" value="Submit"><br>
</form>
</body>
</html>