
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
        <%
       
           String a=request.getParameter("iid");
            String b=request.getParameter("iname");
            String c=request.getParameter("iin");
            String d=request.getParameter("ip");
            String e=request.getParameter("iimg");
            
            
   try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
      PreparedStatement ps=con.prepareStatement("insert into items values(?,?,?,?,?)");
     
      ps.setString(5,a);
      ps.setString(1,b);
      ps.setString(3,c);
      ps.setString(2,d);
      ps.setString(4,e);
      ps.executeUpdate();
       con.close();
        request.setAttribute("username",session.getAttribute("uname"));
            
        request.getRequestDispatcher("admin.jsp").forward(request, response);
     }catch(Exception e1){}
     
 
 
     %>
    </body>
</html>
