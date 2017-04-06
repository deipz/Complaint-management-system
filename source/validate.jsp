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
            uname=request.getParameter("username");
            pwd=request.getParameter("password");
            
            
            ResultSet resultset= 
                    statement.executeQuery("select userid,password,fname from user where userid='"+uname+"'and password='"+pwd+"'") ;
           
            
            if(resultset.next())
            { fname=resultset.getString("fname");

            	session.setAttribute("fname", fname);
            	session.setAttribute("userid", uname);
            %>
            
            <jsp:forward page="home.jsp" />
            <%
            }else {%>
            <jsp:forward page="index.jsp?show=true" />
            
            <%
            }
            %>
            
</body>
</html>