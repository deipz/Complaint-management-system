<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
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
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintDB","root","admin");
 Statement st = con.createStatement();
 
 %>

Create your account <br>
<form action="acc_create.jsp" method="get">
First name: <input type="text" name="fname"><br>
Last name: <input type="text" name="lname"><br>
User id: <input type="text" name="userid"><br>
Password: <input type="password" name="password"><br>
ADDRESS:
<textarea cols="30" rows="4" type="text" id="content" maxlength=
"145" name="address" >
</textarea><br />

<br>

<input type="submit" value="Submit">
</form>


</body>
</html>