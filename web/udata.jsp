
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String a=request.getParameter("uid");
           
            String b=request.getParameter("uname");
            
            String c=request.getParameter("uin");
           
            String d=request.getParameter("up");
            
            String e=request.getParameter("uimg");
           
         
     try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
      
       if(b!=null){
      PreparedStatement ps1=con.prepareStatement("update items set name='"+b+"' where id='"+a+"' ");
       ps1.executeUpdate();
      }
       if(c!=null){
      PreparedStatement ps2=con.prepareStatement("update items set ingre='"+c+"' where id='"+a+"' ");
       ps2.executeUpdate();
      }
         if(d!=null){
      PreparedStatement ps3=con.prepareStatement("update items set price='"+d+"' where id='"+a+"' ");
       ps3.executeUpdate();
      }
          if(e!=null){
      PreparedStatement ps4=con.prepareStatement("update items set img='"+e+"' where id='"+a+"' ");
       ps4.executeUpdate();
      }
     
       con.close();
       response.sendRedirect("admin.jsp");
     }catch(Exception e1){out.print(e1);
     }
 
 
     %>
  
    </body>
</html>
