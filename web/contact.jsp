<%-- 
    Document   : contact
    Created on : 13 Feb, 2023, 5:18:47 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Welcome To Pandora</title> 
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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <style>
     .header{
         position: fixed;
         top: 0px;
         
     } 
     h2{
         margin-top: 10px;
         margin-left: 300px;
         margin-bottom: 10px;
     }
     .col{
         margin-left: -340px;
     }
     
 </style>
 
    </head>
    <body>
          <header class="header">
           <div class="navbar-header">
              
              <h3>Pandora Resto</h3>
    
     </div>
           
 </header>
  
        
      
                              
      <!-- header end-->
      
      
      <!-- sidebar -->
             <input type="checkbox" id="check" hidden="" >
       
  
              
       <div class="sidebar">
           <div class="space">
               
               </div>
       <label for="check">
            <i class="fas fa-bars" id="sidebar_btn"></i></label>

           <b>
      <a href="home.jsp"><i class="fas fa-home"></i><span>Home</span></a>
      
      <a href="#"><i class="fas fa-phone"></i><span>Contact Us</span></a> 
      <a href="about.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
      </b>
  </div>
         <!-- sidebar end-->
      
  
   <div class="container contact ">      
       <h2 >
                 Write your Query
       </h2>
       <form action="condata.jsp">
          
               
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
          <input type="text" id="fname" name="fname" placeholder="Your name.." required="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
          <input type="text" id="lname" name="lname" placeholder="Your last name.." required="">
      </div>
    </div>
    <div class="row">
     <div class="col-25">
        <label for="lname">Email Id</label>
      </div>
      <div class="col-75">
        <input type="email" id="email" name="email" placeholder="Your Email..">
      </div>
     
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Subject</label>
      </div>
      <div class="col-75">
          <textarea id="msg" name="msg" placeholder="Write Your Query.." style="height:200px" required></textarea>
      </div>
    </div>
      
    <div class="row">
        <div class="col">
        <input type="submit" value="Submit">
        </div>
    </div>
      
  </form>
</div>
 
         
         
         
      
    </body>
</html>
