

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Page</title>
         <link rel="stylesheet" type="text/css" href="cs.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" >
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
         <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <meta http-equiv="Content-Type" content="text/html; ">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        .header{
    position: fixed;
    background-color: #202020;
    top:0;

     padding: 20px;
    width: 100%;
    height: 13%;
    transition: 0.5s;
    transition-property: color;
   z-index: 100000;
}
    </style>
        <title>Welcome To Pandora</title>
    </head>
    <body>
       <header class="header">
           <div class="navbar-header">
             
              <h3>Admin Dashboard</h3>

                 <a href="home.jsp">
        <button type="button" class="button1" >LOGOUT</button></a>
              <!-- login form-->
              
                  
</div>
              
                
<!-- login form end-->
       
     </div>
           

           
        </header>
                              
      <!-- header end-->
      
      
      <!-- sidebar -->
         
       
  
              
       <div class="sidebar">
           <div id="space">
               
               </div>
     
           <b>
      <a href="#" id="next1"><i class="fas fa-user active"></i><span>Add Admin </span></a>
       
            
      
      <a href="#"  id="next2"><i class="fas fa-person"></i><span>Add Receptionist</span></a> 
      <a href="#"  id="next3"><i class="fas fa-plus-circle"></i><span>Add Items</span></a>
      <a href="#"  id="next4"><i class="fas fa-pencil"></i><span>Update Items</span></a>
    <a href="#"  id="next5"><i class="fas fa-users"></i><span>Customer Data</span></a> 
      <a href="#"  id="next6"><i class="fas fa-shopping-bag"></i><span>Order Data</span></a> 
      <a href="#"  id="next7"><i class="fas fa-shopping-bag"></i><span>Resto Order Data</span></a> 
        <a href="#"  id="next8"><i class="fas fa-message"></i><span>Show User Queries</span></a> 
    
      </b>
  </div>
         <!-- sidebar end-->

         
         <div class="ad">
                  
                 <section id="f1" >
                    
                  <form action="adata.jsp" method="post">
                  <h3>Add Admin</h3>
              <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Admin Username</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="aname" required/>
                    </div>
                  </div>
                      
              </div>
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Admin Password</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="password" id="form3Example1m" class="form-control form-control-lg" name="apass" required/>
                    </div>
                  </div>
                      
              </div>
                  <button type="submit">Add</button>
                  <div class="table"> 
            <table border="5">
                <thead class="thead-light">
            <th>Admin Name</th>
            <th>Admin Password</th>
            </thead>
        <%
            
         try
        {
          
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from admin ");
        while(rs.next())
        {
          out.print("<tr><tc><td>"+rs.getString(1)+"</td></tc>");
          out.print("<tc><td>********</td></tc></tr>");
 
        }
       
        }catch(Exception ee){}

        %> 
               </table> 
                  </div>     
                       </form>
         </section>
             
             
                  
      <section id="f2"  >
     <form action="rdata.jsp" method="post" >
          <h3>Add Receptionist</h3>
              <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Receptionist Username</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="rname" required/>
                    </div>
                  </div>
                      
              </div>
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Receptionist Password</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="password" id="form3Example1m" class="form-control form-control-lg" name="rpass" required/>
                    </div>
                  </div>
                      
              </div>
                  <button type="submit" >Add</button>
                  <div class="table"> 
            <table border="5">
                <thead class="thead-light">
            <th>Receptionist Name</th>
            <th>Receptionist Password</th>
            </thead>
        <%
         try
        {
          
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from receip");
        while(rs.next())
        {
          out.print("<tr><tc><td>"+rs.getString(1)+"</td></tc>");
          out.print("<tc><td>********</td></tc></tr>");
 
        }
       
        }catch(Exception ee){}

        %> 
               </table> 
                  </div>
                       </form>
         </section>
               
               
               
               
     <section id="f3" >
     
                  <form action="idata.jsp" method="post">
                       
                  <h3>Add Item</h3>
                  
             <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Item Id</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="iid" required/>
                    </div>
                  </div>
              </div>
                  
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Item Name</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="iname" required/>
                    </div>
                  </div>
              </div>
                  
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Description</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="iin" />
                    </div>
                  </div>
              </div>
                  
               <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Item Price</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="ip" required/>
                    </div>
                  </div>
              </div>
                  
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Image</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                        <input type="file" id="form3Example1m" class="form-control form-control-lg" name="iimg" accept="image/png, image/jpeg" required/><label style="color:red"> * jpg , jpeg</label>
                    </div>
                  </div>
                      
              </div>
              
              
              
                  
                  <button type="submit">Add</button>
                  </form>
         
     </section>
               
<section id="f4" >
    
      
              <form class="input" action="udata.jsp" method="post">    
                  <h3>Update Item</h3>
                  
              <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Item Id</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="number" id="form3Example1m" class="form-control form-control-lg" name="uid" required/>
                    </div>
                  </div>
              </div>
                 
                   
                  
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Item Name</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="uname" required/>
                    </div>
                  </div>
              </div>
                  
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Description</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="uin" />
                    </div>
                  </div>
              </div>
                  
               <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Item Price</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                        <input type="number" id="form3Example1m" class="form-control form-control-lg" name="up" required />
                    </div>
                  </div>
              </div>
                  
                  <div class="row">
                   <div class="col-md-3 mb-4">
                    <div class="form-outline">
                 
                        <label class="form-label" for="form3Example1m">Image</label>
                    </div>
                       </div>
                  
                  <div class="col-md-4 mb-4">
                    <div class="form-outline">
                        <input type="file" id="form3Example1m" class="form-control form-control-lg" name="uimg" accept="image/png, image/jpeg" required /><label style="color:red"> * jpg , jpeg</label>
                    </div>
                  </div>
                      
              </div>
              
              
              
                  
                  <button type="submit">Update</button>
                  </form>
         
                 
</section>
               
               
    <section id="f5" >
                    <form>
                        <h3>Customers Data</h3>
                  <div class="table"> 
            <table class="cust" border="5">
                <thead class="thead-light">
            <th>Customer Name</th>
            <th>Date of Birth</th>
             <th>Gender</th>
            <th>Email</th>
            <th>Password</th>
             <th>Mobile NUmber</th>
            <th>Address</th>
            </thead>
        <%
            
         try
        {
          
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from reg ");
        while(rs.next())
        {
          out.print("<tr><tc><td>"+rs.getString(1)+ "  " + rs.getString(2)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(3)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(4)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(8)+"</td></tc>");
          out.print("<tc><td>********</td></tc>");
          out.print("<tc><td>"+rs.getString(10)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(11)+ " - " + rs.getString(12)+"</td></tc> </tr>");
    
 
        }
       
        }catch(Exception ee){}

        %> 
               </table> 
                  </div>     
                 </form>    
        
    </section>
            
            
            
    <section id="f6">
            
             <form  >
                 <h3>Orders Data</h3>
             <div class="table"> 
            <table class="cust" border="5">
                <thead class="thead-light">
             <th>Customer Email</th>
            <th>Date And Time </th>
            
            <th>Ordered Menu</th>
            <th>Total</th>
           
            </thead>
        <%
            
         try
        {
          
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from orde ");
        while(rs.next())
        {
          out.print("<tr><tc><td>"+rs.getString(4)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(3)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(1)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(2)+"</td></tc></tr>");
        
         
 
        }
       
        }catch(Exception ee){}

        %> 
               </table> 
                  </div>
            
                 </form>
                 
    
    </section>
            
              
    <section id="f7">
            
             <form  >
                 <h3>Resto Orders Data</h3>
             <div class="table"> 
            <table class="cust" border="5">
                <thead class="thead-light">
           <!-- <th>Order Id</th>-->
            <th>Date And Time </th>
            
            <th>Ordered Menu</th>
            <th>Total</th>
           
            </thead>
        <%
            
         try
        {
          
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from receiporder ");
        while(rs.next())
        {
          out.print("<tr><tc><td>"+rs.getString(3)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(1)+"</td></tc>");
          out.print("<tc><td>"+rs.getString(2)+"</td></tc></tr>");
        
         
 
        }
       
        }catch(Exception ee){}

        %> 
               </table> 
                  </div>
            
                 </form>
                 
    
    </section>
 
               
               
    <section id="f8">
                   <center>
                        <h1><u>Quries!!..</u></h1></center> 
             <form  >
                 
          <div class="table"> 
            <table border="5">
                <thead class="thead-light">
            <th>Emai Id</th>
            <th>First Name </th>
            <th>Last Name </th>
            <th>Issue </th>
            </thead>
       
                 <%
                 try
        {
          
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from con ");
        while(rs.next())
        {
          out.print("<tr><tc><td>"+rs.getString(4)+"</td></tc>");
           out.print("<tc><td>"+rs.getString(1)+"</td></tc>");
            out.print("<tc><td>"+rs.getString(2)+"</td></tc>");
             out.print("<tc><td>"+rs.getString(3)+"</td></tc></tr>");
          
 
        }
       
        }catch(Exception ee){}
        %>
            </table>
          </div>
      </form>
            
    
    </section>
         </div>
      
      <script>
            
          
              next1.onclick = function()
        {
            f1.style.top = "0px";
            f2.style.top = "+1000px";
            f3.style.top = "+1000px";
             f4.style.top = "+1000px";
             f5.style.top = "+1000px";
             f6.style.top = "+1000px";
             f7.style.top = "+1000px";
               f8.style.top = "1000px"; 
        }
           
          next2.onclick = function()
        {
            f2.style.top = "0px";
            f1.style.top = "-1000px";
            f3.style.top = "+1000px";
            f4.style.top = "+1000px";
            f5.style.top = "+1000px";
            f6.style.top = "+1000px";
            f7.style.top = "+1000px";
              f8.style.top = "1000px"; 
             
        }
        
         next3.onclick = function()
        {  
            
            f3.style.top = "0px";
            f1.style.top = "-1000px";
            f2.style.top = "-1000px";
            f4.style.top = "+1000px";
            f5.style.top = "+1000px";
            f6.style.top = "+1000px";
            f7.style.top = "+1000px";
              f8.style.top = "1000px"; 
        }
       
        next4.onclick = function()
        {  
            
            f4.style.top = "0px";
            f3.style.top = "-1000px";
            f1.style.top = "-1000px";
            f2.style.top = "-1000px";
            f5.style.top = "+1000px";
            f6.style.top = "+1000px";
            f7.style.top = "+1000px";
              f8.style.top = "1000px"; 
        }
          
          next5.onclick = function()
        {
            f5.style.top = "0px";
            f2.style.top = "-1000px";
            f1.style.top = "-1000px";
            f3.style.top = "-1000px";
            f4.style.top = "-1000px";
            f6.style.top = "+1000px";
            f7.style.top = "+1000px";
              f8.style.top = "1000px"; 
             
        }
        
         next6.onclick = function()
        {
            f6.style.top = "0px";
            f2.style.top = "-1000px";
            f1.style.top = "-1000px";
            f3.style.top = "-1000px";
            f4.style.top = "-1000px";
            f5.style.top = "-1000px";
            f7.style.top = "+1000px";
               f8.style.top = "1000px"; 
        }
       
         next7.onclick = function()
        {
            f7.style.top = "0px";
            f2.style.top = "-1000px";
            f1.style.top = "-1000px";
            f3.style.top = "-1000px";
            f4.style.top = "-1000px";
            f5.style.top = "-1000px";
            f6.style.top = "-1000px";
            f8.style.top = "1000px"; 
        }
         next8.onclick = function()
        {
            f8.style.top = "0px";
            f2.style.top = "-1000px";
            f1.style.top = "-1000px";
            f3.style.top = "-1000px";
            f4.style.top = "-1000px";
            f5.style.top = "-1000px";
            f6.style.top = "-1000px";
            f7.style.top = "-1000px";
             
        }
       
     
         </script>
    </body>
</html>
