<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	body {
     	background-image: url('back.jpg');
     	
     	
	}
	form{
    		 margin: 200px;
    		width: 70%;
	}
	table, th, td {
    border: 2px solid green;
    width: 100%;
    border-collapse: collapse;
	}
	th {
    height: 50px;
    background-color: green;
    color: white;
	}
	td {
    height: 50px;
    vertical-align: bottom;
    padding: 15px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<%
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","admin");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT complaintdatetime, CASE WHEN departmentid = 1001 THEN 'ELECTRICAL' WHEN departmentid = 1002 THEN 'CIVIL' ELSE 'WATER SUPPLY' END As department ,fault , status  from complaint where userid='"+session.getAttribute("userid")+"' and status='Submitted'");
%>

WELCOME TO COMPLAINT MANAGEMENT SYSTEM<br>
WELCOME
<%= session.getAttribute("fname") %>
<a href="new_complaint.jsp">Register new complaint</a><br>
<a href="history.jsp">VIEW HISTORY</a><br>
<a href="index.jsp">Logout</a><br>


    <table>
		<tr>
			<th>SL No</th>
			<th>Complaint Date</th>
			<th>Concerned Department</th>
			<th>Fault</th>
			<th>Status</th>
		</tr>

	<%
		int counter;
		counter=1;
	%>		
	<% while(rs.next()){ %>
		<tr>
			<td><%= counter++ %></td>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
		</tr>
	<%
		}
		rs.close();
		st.close();
	%>
	</table>
</body>
</html>