
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

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
        
      <!-- login form -->
    <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
  
        
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}


</script>
  <!-- login form end -->
    </head>
    <body>
        
        
        
        

        
        
        
        
        
        
      <!-- header -->
       <header class="header">
           <div class="navbar-header">
              
              <h3>Pandora Resto</h3>
                <div  class="button">
               <a href="home.jsp">
                   <button type="button" >LOGOUT</button></a></div>
            
                  
               

           
        </header>
      
      <div class="receipcartbtn">
           
          <a href="#" id="next2"><i class="fas fa-shopping-cart " aria-hidden="true"> <span>Cart  </span></i></a>
    </div>
           

           
        
      
                              
      <!-- header end-->
      

       
  
     <div id="carouselExampleIndicators" class="receipcarousel  slide" data-ride="carousel">
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

    <section class="containercart content-section">
       
            <h2 class="section-header">CART</h2>
            
             <div class="back">
                 <a  href="receip.jsp"  ><button class="btn btn-cart " type="button">BACK </button></a>
          
               
            </div>
           
            <div class="cart-row">
                <span class="cart-item cart-header cart-column">ITEM</span>
                <span class="cart-price cart-header cart-column">PRICE</span>
                <span class="cart-quantity cart-header cart-column">QUANTITY</span>
            </div>
           
            <div class="cart-items">
                
                <%
                      try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/Mca","mca","Ankit@123");
        
         int total=0;
          String a=request.getParameter("item");
        
          int c=0;
      
           Statement st1=con1.createStatement();
        ResultSet rs1=st1.executeQuery("select * from receipcart ");
        while(rs1.next())
        {
              
               
                total = total + (Integer.parseInt(rs1.getString(2) ) * rs1.getInt(5) );
                total = Math.round(total * 100) / 100;
                    
                    out.print(
                             " <form action='delreceipcart.jsp' method='post'>"+
                "  <div class='cart-item cart-column'>"+
                       
          "  <img class='cart-item-image' src=images/"+rs1.getString(3)+" width='100' height='100'>"+
           " <span class='cart-item-title'>"+rs1.getString(1)+"</span>"+
       " </div>"+
       " <span class='cart-price cart-column'><b>"+rs1.getString(2)+"</b></span>"+
       " <div class='cart-quantity cart-column'>"+
               "<a href='plus.jsp' ><i class='fas fa-plus '></i></a>"+
           " <input class='cart-quantity-input' type='number' value="+rs1.getInt(5)+">"+
                   "<input type='hidden' name='c' value="+ rs1.getString(4) +">"+
            "<button class='btn btn-danger' type='submit'>REMOVE</button>"+
               
       " </div>  "+
       "</form>"
            
);}
        
       
  
        
        
       out.print(    
           " </div>"+
         "   <div class='cart-total'>"+
              "  <strong class='cart-total-title'>Total</strong>"+
               " <span class='cart-total-price'  >₹ "+total+" </span>"+
                
            "</div>"+
        
            "<center>"+
              "<div class='back'>"+
                " <a  href='receip.jsp'  ><button class='btn btn-cart ' type='button'>BACK </button></a>"+
         
               
           " </div>"+
                      
               " <a href='receiporder.jsp' ><b class='btn  btn-purchase'>PURCHASE</b></a></center>"
             );
       
       String t=String.valueOf(total);
       
       Cookie coo = new Cookie("total",t );
            response.addCookie(coo);
        }catch(Exception e){ }   
              %>
        </section>
                    
           
  
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
                        <p class="footer-info-text" >
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
                                        <a href="#">Services</a>
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
                                <p>Don’t miss to subscribe to our new feeds, kindly fill the form below.
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
   
          
  <script>
      
        
        
  </script>
  
    </body>
    
</html>
