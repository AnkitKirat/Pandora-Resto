
<%@page import="java.util.stream.Stream"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
        <%

       
            
         try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        
        
          String a=request.getParameter("c");
        
         
      
           Statement st1=con.createStatement();
        ResultSet rs1=st1.executeQuery("select * from cart ");
        while(rs1.next())
        {
            if(a.equals(rs1.getString(4))){
               PreparedStatement ps=con.prepareStatement("delete from cart where id= '"+ a +"' ");
               ps.executeUpdate();
            }
            
        }
        
                
                    
        
         request.setAttribute("username",session.getAttribute("uname"));
            
        request.getRequestDispatcher("cart.jsp").forward(request, response);
          
          
         con.close();
        }catch(Exception ee){out.print(ee);}

        

 
     %>
    </body>
</html>
