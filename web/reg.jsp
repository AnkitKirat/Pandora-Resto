<%-- 
    Document   : login_btn
    Created on : 21 Apr, 2022, 11:20:44 AM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
      

<style>

.space{
    margin-top: 50px;
}



</style>
</head>
<body >
     <!-- header -->
       <header class="header">
           <div class=" navbar-brand navbar-header">
               <div class="container">
               
              <h3>Pandora Resto </h3></a>
               </div>
             </div>
           

           
        </header>
                              
      <!-- header end-->
   
       
       <form class="reg"action="regdata.jsp" method="post"  >    
<section class=" h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img
                src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo"
                class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;"
              />
            </div>
            <div class="input col-xl-6">
              <div class="card-body p-md-5 text-black">
                  
                <h3 class="mb-5 text-uppercase text-center">registration form</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg" name="fname" required/>
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="lname" required />
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m1" class="form-control form-control-lg" name="dob" placeholder="DD/MM/YYYY" required />
                      <label class="form-label" for="form3Example1m1">Date OF Birth</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                         
                      <input type="number" id="form3Example1n1" class="form-control form-control-lg" name="mobi" required />
                      
                      <label class="form-label" for="form3Example1n1">Mobile Number</label>
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                    <input type="text" id="form3Example8" class="form-control form-control-lg" name="addr" required />
                  <label class="form-label" for="form3Example8">Address</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="number" id="form3Example90" class="form-control form-control-lg"  name="pin" required/>
                  <label class="form-label" for="form3Example90">Pincode</label>
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="gender"
                      id="femaleGender"
                      value="F"
                      required
                    />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="gender"
                      id="maleGender"
                      value="M"
                    />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="gender"
                      id="otherGender"
                      value="O"
                    />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>
<div class="row">
  <div class="col-md-6 mb-4">
      <label class="co-form-check-label" >Country :-</label>
        
     <select class="select" name="country">
         <option value="IN">India</option>
         <!-- 
    <option>Select country</option>
    <option value="AF">Afghanistan</option>
    <option value="AM">Armenia</option>
    <option value="AZ">Azerbaijan</option>
    <option value="BH">Bahrain</option>
    <option value="BD">Bangladesh</option>
    <option value="BT">Bhutan</option>
    <option value="IO">British Indian Ocean Territory</option>
    <option value="BN">Brunei Darussalam</option>
    <option value="KH">Cambodia</option>
    <option value="CN">China</option>
    <option value="CX">Christmas Island</option>
    <option value="CC">Cocos (Keeling) Islands</option>
    <option value="CY">Cyprus</option>
    <option value="GE">Georgia</option>
    <option value="HK">Hong Kong</option>
    <option value="IN">India</option>
    <option value="ID">Indonesia</option>
    <option value="IR">Iran, Islamic Republic of</option>
    <option value="IQ">Iraq</option>
    <option value="IL">Israel</option>
    <option value="JP">Japan</option>
    <option value="JO">Jordan</option>
    <option value="KZ">Kazakhstan</option>
    <option value="KP">Korea, Democratic People's Republic of</option>
    <option value="KR">Korea, Republic of</option>
    <option value="KW">Kuwait</option>
    <option value="KG">Kyrgyzstan</option>
    <option value="LA">Lao People's Democratic Republic</option>
    <option value="LB">Lebanon</option>
    <option value="MO">Macao</option>
    <option value="MY">Malaysia</option>
    <option value="MV">Maldives</option>
    <option value="MN">Mongolia</option>
    <option value="MM">Myanmar</option>
    <option value="NP">Nepal</option>
    <option value="OM">Oman</option>
    <option value="PK">Pakistan</option>
    <option value="PS">Palestinian Territory, Occupied</option>
    <option value="PH">Philippines</option>
    <option value="QA">Qatar</option>
    <option value="RU">Russian Federation</option>
    <option value="SA">Saudi Arabia</option>
    <option value="SG">Singapore</option>
    <option value="LK">Sri Lanka</option>
    <option value="SY">Syrian Arab Republic</option>
    <option value="TW">Taiwan, Province of China</option>
    <option value="TJ">Tajikistan</option>
    <option value="TH">Thailand</option>
    <option value="TL">Timor-Leste</option>
    <option value="TR">Turkey</option>
    <option value="TM">Turkmenistan</option>
    <option value="AE">United Arab Emirates</option>
    <option value="UZ">Uzbekistan</option>
    <option value="VN">Viet Nam</option>
    <option value="YE">Yemen</option>
         -->
</select>
         </div></div>
                
         <div class="row">
         <div class="col-md-6 mb-4">
            <label class="st-form-check-label" >State :- </label>
            <select class="select" name="state">
                <option value="Maharashtra">Maharashtra</option>

<!--
 <option value="Select State">Select State</option> 
 <option value="Maharashtra">Maharashtra</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>-->
</select>
                  </div>
                  <div class="col city -md-6 mb-4">
                      <label class="form-label" for="form3Example90">City</label>
                      <input type="text" id="form3Example90" class="form-control form-control-lg" name="city"  required/>
                  
                  </div>
                </div>

                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example99">Email ID</label>
                  <input type="email" id="form3Example99" class="form-control form-control-lg" name="email" required />
                  
                </div>

                  
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example97"> Password</label>
                  <input type="password" id="form3Example" class="form-control form-control-lg" name="cpass" required/>
                  
                </div>

                <div class="d-flex justify-content-end pt-3">
                    <a href="reg.jsp"
                       <button type="button" class="btn btn-light btn-lg">Reset all</button></a>
                  <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                </div>
                   
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</form> 

</body>
</html>

 