
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
        <%
            String total="";
            Cookie[] cookies = request.getCookies();
            
             for (Cookie c : cookies) {
                    String tname = c.getName();
                    if (tname.equals("total")) {
                   
                        total = c.getValue();
                             c.setMaxAge(0);
                        
                    }
                }
               
           
      
           String menu=" "; 
          
   try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from receipcart ");
      while(rs.next()){
          
      menu=menu.concat(rs.getString(1));
         menu=menu.concat(" , ");
      }
       
        
    
       
      PreparedStatement ps=con.prepareStatement("insert into receiporder values('"+menu+"','"+total+"',CURRENT_TIMESTAMP)");
      
     
      
      
      ps.executeUpdate();
      st.execute("TRUNCATE table receipcart");
       con.close();
  
        request.setAttribute("username",session.getAttribute("uname"));
            
        request.getRequestDispatcher("receip.jsp").forward(request, response);
     
     
     }catch(Exception e1){out.print(e1);
     }
     
 
 
     %>
    </body>
</html>
