
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
        
        
          String a=request.getParameter("item");
        
          int c=0;
      
           Statement st1=con.createStatement();
        ResultSet rs1=st1.executeQuery("select * from receipcart ");
        while(rs1.next())
        {
            if(a.equals(rs1.getString(4))){
                int qua=rs1.getInt(5);
                ++qua;
                PreparedStatement ps=con.prepareStatement(" update receipcart set qau="+qua+" where id='"+a+"'  ");
                ps.executeUpdate();
                 request.setAttribute("username",session.getAttribute("uname"));
            
        request.getRequestDispatcher("receip.jsp").forward(request, response);
                 con.close();
            }
            
        }
        
                
                    
        
          if(c>0)    
          {
              
          }
        else
          {
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from items ");
                    while(rs.next())
                    {
                        
                        
                           if(a.equals(rs.getString(5))){
                           PreparedStatement ps=con.prepareStatement("insert into receipcart values(?,?,?,?,?)");
                           ps.setString(1,rs.getString(1));
                          ps.setInt(2,Integer.parseInt(rs.getString(2)));
                           ps.setString(3,rs.getString(4));
                           ps.setString(4,rs.getString(5));
                            ps.setInt(5,1);
                          ps.executeUpdate();

                            request.setAttribute("username",session.getAttribute("uname"));
            
                            request.getRequestDispatcher("receip.jsp").forward(request, response);
                           con.close();
                                }

                    }

            }
          request.setAttribute("username",session.getAttribute("uname"));
            
        request.getRequestDispatcher("receip.jsp").forward(request, response);
        }catch(Exception ee){out.print(ee);}

        

 
     %>
    </body>
</html>
