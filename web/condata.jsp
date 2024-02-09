
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");   
            String fname=request.getParameter("fname"); 
            String lname=request.getParameter("lname"); 
            String msg=request.getParameter("msg"); 
             Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
            
         try
          {
     
                    PreparedStatement ps=con.prepareStatement("insert into con values(?,?,?,?)");

                    ps.setString(4, email);
                    ps.setString(1,fname);
                    ps.setString(2,lname);
                    ps.setString(3,msg);
                     ps.executeUpdate();
                  con.close();
                  request.setAttribute("username",session.getAttribute("uname"));
            
        request.getRequestDispatcher("contact.jsp").forward(request, response);
          
          
          }catch(Exception ae){out.print(ae);}
         
        %> 
              
    </body>
</html>
