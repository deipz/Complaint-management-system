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
<title>COMPLAINT MANAGEMENT SYSTEM</title>
</head>
<body>
<%
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","admin");

Statement st = con.createStatement();  
		
        String dept = request.getParameter("dept");
        int deptid;
        String place = request.getParameter("place");
        String fault = request.getParameter("fault");
        String desc = request.getParameter("desc");
        String userid=(String)session.getAttribute("userid");
        if(dept.equals("civil"))
        	deptid=1002;
        else if(dept.equals("elec"))
        	deptid=1001;
        else
        	deptid=1003;
        st.executeUpdate("INSERT into complaint (complaintdatetime,place,fault,departmentid,userid,description) VALUES ( current_timestamp,'"  
                            + place 
                            + "','"  
                            + fault
                            + "','"  
                            + deptid
                            + "','"  
                            + userid
                            + "','"  
                            + desc
                            + "')");
        st.close();
        con.close();
        
%>
DATA ENTERED successfully.
<a href="home.jsp">home</a>

</body>
</html>