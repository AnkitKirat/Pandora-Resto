<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    int f=0,ad=0,r=0;
 try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
     String a=request.getParameter("email");
    String b=request.getParameter("psw");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg ");
while(rs.next())
{
        if(rs.getString(8).equals(a) && rs.getString(9).equals(b))
            
        {
        
        f=1;
     
        }
}

     }catch(Exception e){}

 
 
  try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
     String a=request.getParameter("email");
    String b=request.getParameter("psw");
out.print(a+b);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from admin ");
while(rs.next())
{
        if(rs.getString(1).equals(a) && rs.getString(2).equals(b))
            
        {
        
        ad=1;
       
        }
}

     }catch(Exception e){}
  
  
  
  try
     {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
     String a=request.getParameter("email");
    String b=request.getParameter("psw");
out.print(a+b);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from receip ");
while(rs.next())
{
        if(rs.getString(1).equals(a) && rs.getString(2).equals(b))
            
        {
        
        r=1;
      
        }
}

     }catch(Exception e){}
  
  
  
  
if(ad==1){
  request.getRequestDispatcher("admin.jsp").forward(request, response);

}
  else if(f==1)
{
    session = request.getSession();
               request.setAttribute("username", request.getParameter("email"));
               session.setAttribute("uname",request.getParameter("email"));

     
   request.getRequestDispatcher("home.jsp").forward(request, response);

}
 else if(r==1)
{
  request.getRequestDispatcher("receip.jsp").forward(request, response);

}

else
 {
     
 request.getRequestDispatcher("home.jsp").forward(request, response);

 }

%>
  

   </body>
</html>