<%-- 
    Document   : logout
    Created on : 14 Feb, 2023, 10:13:08 AM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
      Statement st=con.createStatement();
     
          st.execute("TRUNCATE table cart");
       request.setAttribute("username",null);
         session.removeAttribute("uname");
        request.getRequestDispatcher("home.jsp").forward(request, response);
       
       %>
    </body>
</html>
