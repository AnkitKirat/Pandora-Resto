<%-- 
    Document   : about
    Created on : 29 Jun, 2022, 4:57:31 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          
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
        
<title>Welcome To Pandora</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            
      .header{
            top:0px;
            position: fixed;
        }

body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}


.about{
     margin-top: 90px;
    margin-left: 250px;
}

.about-section {
   
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
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
      
      <a href="contact.jsp"><i class="fas fa-phone"></i><span>Contact Us</span></a> 
      <a href="#"><i class="fas fa-info-circle"></i><span>About</span></a>
      </b>
  </div>
         <!-- sidebar end-->
      
  
       
  
         
         
         <div class="about">     
<div class="about-section">
  <h1>About Us </h1>
  <p>Some text about who we are and what we do.</p>
  </div>

<h2 style="text-align:center">Our Team</h2>
<div>
 <p>"Pandora Resto" is a web based application developed in java. In this web-application the different Dishes Can Be Ordered.
     This web-application helps the user to easily order  their Favourite. The user can directly visit our website and access the information about the different Region.
     The user can also get the information about Menu like Iteam Name,Iteam Ingredients etc..The user can search and see their favourite Dishes like  
      Biryani &  with Tandoori.</p>
  <p> The user can visit our website and create the account, Then The user can book the required item and they also can see the available events when they login.The user can also add items in the cart.When the user can book the particular 
      item then go to the Pandora Resto  and purchase the item.
  </p>
  <h3 style="text-align:center">
      This website can be used by any person who is having the information about ordering the functions.
  </h3>
</div>

         </div>
         
         
         
         
         
         
         
         
         
         
     <div id="footer">
     <footer id="dk-footer" class="dk-footer" >
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-4">
                    <div class="dk-footer-box-info">
                        <a href="index.html" class="footer-logo">
                            <img src="images/footer_logo.png" alt="footer_logo" class="img-fluid">
                        </a>
                        <p class="footer-info-text">
                          Welcome To Pandora Resto.
                        </p>
                        <div class="footer-social-link">
                            <h3>Follow us</h3>
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa-brands fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa-brands fa-google-plus-g"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa-brands fa-linkedin"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa-brands fa-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- End Social link -->
                    </div>
                    <!-- End Footer info -->
                    <div class="footer-awarad">
                        <img src="images/icon/best.png" alt="">
                        <p></p>
                    </div>
                </div>
                <!-- End Col -->
                <div class="col-md-12 col-lg-8 box">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-us">
                                <div class="contact-icon">
                                    <i class="fa fa-map-o" aria-hidden="true"></i>
                                </div>
                                <!-- End contact Icon -->
                                <div class="contact-info">
                                    <h3>Maharashtra India</h3>
                                    <p>5353 Pune Road Avenue</p>
                                </div>
                                <!-- End Contact Info -->
                            </div>
                            <!-- End Contact Us -->
                        </div>
                        <!-- End Col -->
                        <div class="col-md-6">
                            <div class="contact-us contact-us-last">
                                <div class="contact-icon">
                                    <i class="fa fa-volume-control-phone" aria-hidden="true"></i>
                                </div>
                                <!-- End contact Icon -->
                                <div class="contact-info">
                                    <h3>86 57 17 1735</h3>
                                    <p>Give us a call</p>
                                </div>
                                <!-- End Contact Info -->
                            </div>
                            <!-- End Contact Us -->
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Contact Row -->
                    <div class="row">
                        <div class="col-md-12 col-lg-6">
                            <div class="footer-widget footer-left-widget">
                                <div class="section-heading">
                                    <h3>Useful Links</h3>
                                    <span class="animate-border border-black"></span>
                                </div>
                                <ul>
                                    <li>
                                        <a href="about.jsp">About us</a>
                                    </li>
                                    
                                    <li>
                                        <a href="contact.jsp">Contact us</a>
                                    </li>
                                   
                                </ul>
                             </div>
                            <!-- End Footer Widget -->
                        </div>
                        <!-- End col -->
                        <div class="col-md-12 col-lg-6">
                            <div class="footer-widget">
                                <div class="section-heading">
                                    <h3>Subscribe</h3>
                                    <span class="animate-border border-black"></span>
                                </div>
                                <p> Don’t miss to subscribe to our new feeds, kindly fill the form below.
                                </p>
                                <form action="#">
                                    <div class="form-row">
                                        <div class="col dk-footer-form">
                                            <input type="email" class="form-control" placeholder="Email Address">
                                            <button type="submit">
                                                <i class="fa fa-send"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <!-- End form -->
                            </div>
                            <!-- End footer widget -->
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->
                </div>
                <!-- End Col -->
            </div>
            <!-- End Widget Row -->
        </div>
        <!-- End Contact Container -->


        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 copy">
                          <span>Copyright © 2022, All Right Reserved Dream Organiser</span>
                    </div>
                    <!-- End Col -->
                   
                </div>
                
            </div>
            <!-- End Copyright Container -->
        </div>
        <!-- End Copyright -->
       </footer>
     </div>
   
          
       
  
    </body>
</html>
