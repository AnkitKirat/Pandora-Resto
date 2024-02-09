
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

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
        
      <!-- login form -->
    <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
  
        
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}


</script>
<title>Welcome To Pandora</title>
  <!-- login form end -->
    </head>
    <body>
        
        
        
        

        
        
        
        
        
        
      <!-- header -->
       <header class="header">
           <div class="navbar-header">
              
              <h3>Pandora Resto</h3>
          <%
             if(session.getAttribute("uname") != null)
             {
          %>
               <div  class="button">
                   <a href="logout.jsp">
                       <button type="button" ><b>LOGOUT</b></button> </a> </div>
     <%
              }
    else{
      %>       
                    <div  class="button1">
                         <button type="button"  onclick="openForm()"><b>LOGIN</b></button> </div>
                      <div  class="button">
                     <a href="reg.jsp">
                         <button type="button" onclick="openreg()"><b>REGISTER</b></button></a></div>
      <%   }  %>                         
              
         
              <!-- login form-->
              <div class="form-popup" id="myForm">
                  <form action="login.jsp" method="POST" class="form-container" >
    <h1>login</h1>

    
    <input type="text" placeholder="Enter Email" name="email"  required>
    
    
    <input type="password" placeholder="Enter Password" name="psw"  required>

    <button type="submit" class="btn">SIGN IN</button>

    <a href="#" class="close" id="close"  onclick="closeForm()"><i class="fas fa-xmark-circle"></i></a>
    <!--<button type="button" class="btn cancel" onclick="closeForm()">Close</button>-->
  </form>
                  
</div>
              
                
<!-- login form end-->
       
     </div>
           

           
        </header>
      
      <div class="cartbtn">
           
          <a href="cart.jsp" id="next2"><i class="fas fa-shopping-cart " aria-hidden="true"><span>Cart  </span></i></a>
    </div>
           

           
        
      
                              
      <!-- header end-->
      
      
      <!-- sidebar -->
             <input type="checkbox" id="check" hidden="" >
       
  
              
       <div class="sidebar">
           <div class="space">
               
               </div>
       <label for="check">
            <i class="fas fa-bars" id="sidebar_btn"></i></label>

           <b>
               <%
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
                          Statement st1=con1.createStatement();
                    ResultSet rs1=st1.executeQuery("select * from reg where email='"+session.getAttribute("uname")+"' ");
                    while( rs1.next())
                    {
               if(session.getAttribute("uname")!=null)
               {
               %>
                <a href="#"><span>Welcome  <%
                   out.print(rs1.getString(1)); 
                %> </span></a>
               <div class="btn-group dropdown">
  <a class=" dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="fas fa-user"></i> <span>Account Info</span>
  </a>
                   <div class="dropdown-menu" style="background-color: #22242A">
    <!-- Dropdown menu links -->
   
    <a class="dropdown-item" href="myorders.jsp"><i class="fas fa-folder"></i><span>My Orders</span></a>
  </div>
</div>
   
              
             <%
               }
               }
               %>
      <a href="#"><i class="fas fa-home"></i><span>Home</span></a>
      
      <a href="contact.jsp"><i class="fas fa-phone"></i><span>Contact Us</span></a> 
      <a href="about.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
      </b>
  </div>
         <!-- sidebar end-->
          
       
       
  
     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="http://source.unsplash.com/500x200/?Restaurant" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="http://source.unsplash.com/500x200/?dish" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="http://source.unsplash.com/500x200/?cake" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <%--grid            grid             grid    --%>

  
    <div class="grid text-center">
<section class="text-gray-600 body-font " id="f">
  <div class="container Carousel  px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-20">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900"> "We Cannot Make Events. <br>Our Bussiness Is Wisely To Improve Them."</h1>
      <p class="lg:w-2/3 mx-auto leading-relaxed text-base">To Create Something Exceptional,<br>Your Mindset Must Be Relenetless Focused On The Smallest Details. </p>
    </div>
    <div class="shop-item flex flex-wrap -m-4">
          <%
                       Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
     
    
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from items   ");
  while(rs.next() ){
      
    
      out.print(
                  "<div class='xl:w-1/4 md:w-1/2 p-4'>"+
                          "<form action='cartdata.jsp' method='post'> "+
                  " <div class='bg-gray-100 p-6 rounded-lg'>"+
          "<img class='shop-item-image h-40 rounded w-full object-cover object-center mb-6' src=images/"+rs.getString(4)+" alt='content'>"+
         " <h2 class='shop-item-title text-lg text-gray-900 font-medium  title-font mb-4'  style='text-align: left'>" +rs.getString(1)+"</h2>"+
          " <p class='leading-relaxed text-base' style='text-align: left'>" +rs.getString(3)+"</p>"+
                 " <p class='shop-item-price mt-1 text-lg text-gray-900 font-medium' style='text-align: left'>₹" +rs.getString(2)+"</p>"+
         /* "  <h3 class='tracking-widest text-indigo-500 text-xs font-medium title-font'>INGREDIANTS</h3>"+
        
          */
                         
           "<input type='hidden' name='item' value="+ rs.getString(5)+">"+              
          "<button  class='btn shop-item-button flex mx-auto mt-6  border-0 py-2 px-5 '    >Add⁺</button>"+

       " </div> </form> </div> "
      
                   ); }
  %>
 
  </div>
</section>
  
  
                    
           
  
    </div>
             
     <div id="footer">
     <footer id="dk-footer" class="dk-footer" >
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-4">
                    <div class="dk-footer-box-info">
                        <a href="home.jsp" class="footer-logo">
                            <img src="images/footer_logo.png" alt="footer_logo" class="img-fluid">
                        </a>
                        <p class="footer-info-text" >
                       Welcome On Pandora Resto.
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
                                    <h3>86 35 57 1717</h3>
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
                                </p> <form action="#">
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
   
          
  <script>
      
        
        
  </script>
  
    </body>
    
</html>
