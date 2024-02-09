
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
            int f=0;
            String a=request.getParameter("aname");
           
            String b=request.getParameter("apass");
     try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
     

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from admin ");
while(rs.next())
{
        if(rs.getString(1).equals(a) && rs.getString(2).equals(b))
            
        {
        
        f=1;
        
        }
}

     }catch(Exception ex){
   
     }

 if(f==1){
 out.write("<script type='text/javascript'>\n");
out.write("alert('Admin Is Alredy Registered')");
out.print("setTimeout('document.location.href='admin.jsp'',5000)");
out.write("</script>\n");

 }
 else{         
     try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
      PreparedStatement ps=con.prepareStatement("insert into admin values(?,?)");
       
      ps.setString(1, a);
      ps.setString(2,b);
      ps.executeUpdate();
       con.close();
       response.sendRedirect("admin.jsp");
     }
     catch(Exception e1){out.print(e1);}
 }
 
     %>
     <!-- 
      
      -->
    </body>
</html>
