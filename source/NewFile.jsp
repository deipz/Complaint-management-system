<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY>
        <H1>Fetching Data From a Database</H1>

        <% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","admin");

            Statement statement = connection.createStatement();
            //statement.execute("create table role(roleid tinyint not null primary key, name varchar(30))");

            ResultSet resultset = 
                    statement.executeQuery("select * from login") ;

            
           

            while(resultset.next()) {
                out.println(resultset.getString("user") +"\t"+resultset.getString("password"));
            } 
       %>
    </BODY>
</HTML>