<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","admin");
			
            Statement statement = connection.createStatement();
            String uname=new String("");
            String pwd=new String("");
            String fname=new String("");
            uname=request.getParameter("name");
            pwd=request.getParameter("password");
            
            
            ResultSet resultset= 
                    statement.executeQuery("select name,password from department where name='"+uname+"'and password='"+pwd+"'") ;
           
            
            if(resultset.next())
            { 

            	session.setAttribute("name", uname);
            %>
            
            <jsp:forward page="admin_home.jsp" />
            <%
            }else {%>
            <jsp:forward page="admin.jsp?show=true" />
            
            <%
            }
            %>
            
</body>
</html>