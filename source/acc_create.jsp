<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
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
<title>Account Created</title>
</head>
<body>
<%
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","admin");

Statement st = con.createStatement();  

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        String address=request.getParameter("address");
        st.executeUpdate("INSERT into user (userid,fname,lname,password,address) VALUES ('"  
                            + userid  
                            + "','"  
                            + fname  
                            + "','"  
                            + lname  
                            + "','"  
                            + password
                            + "','"  
                            + address
                            + "')");
        st.close();
        con.close();
        
%>
Account created successfully.
<a href="index.jsp">Login now</a>

</body>
</html>