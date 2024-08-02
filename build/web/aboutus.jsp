<%-- 
    Document   : aboutus
    Created on : 8 Feb, 2024, 6:32:50 AM
    Author     : palla
--%>
<%@include file="dbconnection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
  
    <!-- Start Main Top -->
    
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
         
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="index.html"><img src="images/lo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                 <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" style="font-family: long;"href="mainhomepage.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" style="font-family: long;" href="adminlogin.jsp">Admin</a></li>
                
                        <li class="nav-item"><a class="nav-link" style="font-family: long;"href="login.jsp">Customer</a></li>
                          <li class="nav-item"><a class="nav-link" style="font-family: long;"  href="aboutus.jsp">About Us</a></li>
                        <li class="nav-item"><a class="nav-link"  style="font-family: long;" href="contactus.jsp">Contact Us</a></li>
                         <li class="nav-item"><a class="nav-link" style="font-family: long;" href="feedback.jsp">Feedback</a></li>
                         
                         <li class="nav-item"><a class="nav-link"  style="font-family: long;" href="logout.jsp">LogOut</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-12">
                    <h1>RK</h1>
                   
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <style>
    /* Styling for the About Us sections */
    .about-box-main {
        margin-top: 50px;
        background-color: #f9f9f9;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .about-box-main .banner-frame img {
        max-width: 100%;
        border-radius: 10px;
    }

    .about-box-main h2 {
        font-family: 'Arial', sans-serif;
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .about-box-main p {
        font-family: 'Arial', sans-serif;
        text-align: justify;
        line-height: 1.6;
        color: #666;
    }

    .about-box-main center {
        font-size: 24px;
        color: palevioletred;
        margin-bottom: 20px;
    }
</style>

<div class="about-box-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="banner-frame">
                    <img class="img-fluid" src="images/about1 (1).jpg" alt="Makeup Information" />
                </div>
            </div>
            <div class="col-lg-6">
                <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                <h2 class="noo-sh-title-top">Makeup Information</h2>
                <p>
                    At RadhaKrishna, we are committed to excellence. We meticulously research and develop each product, utilizing the latest advancements in makeup technology and incorporating feedback from makeup artists and beauty enthusiasts. Our formulas are carefully crafted to deliver superior performance, long-lasting wear, and effortless application.
                </p>
            </div>
        </div>
    </div>
</div>

<div class="about-box-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                <h2 class="noo-sh-title-top">Product Information</h2>
                <p>
                    Customer satisfaction is our top priority. We are dedicated to providing exceptional service and support to our customers, ensuring a seamless shopping experience and salon visit from start to finish. Whether you're looking for a personalized makeup consultation or a relaxing spa treatment, our team is here to assist you every step of the way.
                </p>
            </div>
            <div class="col-lg-6">
                <div class="banner-frame">
                    <img class="img-fluid" src="images/about2 (1).jpg" alt="Product Information" />
                </div>
            </div>
        </div>
    </div>
</div>
    </br></br>
    <!-- End About Page -->

    <!-- Start Instagram Feed  -->
   
    <!-- End Instagram Feed  -->


    <!-- Start Footer  -->
   
    <!-- End Footer  -->

    <!-- Start copyright  -->
     <div class="footer-copyright">
        <p class="footer-company" style="font-family: long; font-size: 25px"> Design    By  :Pallavii    Walke
           </p>
    </div>
    <!-- End copyright  -->

    

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>

