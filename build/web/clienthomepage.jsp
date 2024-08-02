<%-- 
    Document   : clienthomepage
    Created on : 30 Dec, 2023, 4:14:55 AM
    Author     : palla
--%>

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
    <%
        String nm=(String)session.getAttribute("unm1");
    %>
    <!-- Start Main Top -->
    
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <marquee><b><h1><%=nm%></h1></b></marquee>
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
               
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                 <div class="collapse navbar-collapse" id="navbar-menu" style="font-family: long">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link"  href="clienthomepage.jsp">Home</a></li>
                        
                        <li class="nav-item"><a class="nav-link"  href="searchmakeup.jsp">Search Parlours</a></li>
                        <li class="nav-item"><a class="nav-link"  href="searchproduct.jsp">Search Product</a></li>
                         <li class="nav-item"><a class="nav-link"  href="cancelorder.jsp">Cancel Order</a></li>
                         <li class="nav-item"><a class="nav-link"  href="cancelappoinment.jsp">Cancel Appoinment</a></li>
                        <li class="nav-item"><a class="nav-link"   tyle="font-size: 17px" href="logout.jsp">LogOut</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

              
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
          
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    
    <!-- End Top Search -->

    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-center">
                 <img src="images/banner4.jpg" alt="">
               <div class="container"> 
                  <div class="row"> 
                      <div class="col-md-12"> 
                            <h1 class="m-b-20"><strong>Welcome To Look Beautiful</strong></h1>
                        
                            
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/banner2.jpg" alt="">
                <div class="container">
                    <div class="row">
                       <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Get ready for forever with Bridal Infinity.<br></strong></h1>
                            
                            
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/banner3.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Your love story begins here: Bridal Enchantment.</strong></h1>
                            
                            
                        </div>
                    </div>
                </div>
            </li>
         </ul>
    
    </div></br></br>
     <!-- Start Categories  -->
        <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                   <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                        <h1 style="font-family: long" >Confirm Your MakeUp Appoinment</h1>
                     
                    </div>
                </div>
            </div>
    <div class="categories-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/ins4.jpg" alt="" />
                        <a class="btn hvr-hover" style="color: white ; font-family: long; background-color: black">Engagement MakeUp(PT Makeover)</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/ins2.jpg" alt="" />
                         <a class="btn hvr-hover" style="color: white ; font-family: long; background-color: black">Haldi MakeUp(TR Makeover)</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/img125.jpg" alt="" />
                      <a class="btn hvr-hover" style="color: white ; font-family: long; background-color: black">Bride MakeUp(RK Makeover)</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Categories -->
    <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                   <center>_______________<span style="font-size:500%;color:greenyellow;">&hearts;</span>_______________</center>
                        <h1 style="font-family: long">Our Services</h1>
                     
                    </div>
                </div>
            </div>
               
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="offer-box-products">
                                           <img class="img-fluid" src="images/add.jpg" alt="" />
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="offer-box-products">
						<img class="img-fluid" src="images/ss.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>

    <!-- Start Products  -->
   <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                   <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                        <h1 style="font-family: long">Shopping Shopping</h1>
                        <p><b><h2 style="font-family: long">Best Quality Product Buying Now</h2></b></p>
                    </div>
                </div>
            </div>
           

            <div class="row special-list">
                <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                
                            </div>
                            <img src="images/b3.jpg" class="img-fluid" alt="Image">
                            
                        </div>
                        <div class="why-text">
                            <h4 style="font-family: long" >Golden Bangles(Rs.450/-)</h4>
                    
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid top-featured">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                
                            </div>
                            <img src="images/h2.jpg" class="img-fluid" alt="Image">
                             
                        </div>
                        <div class="why-text">
                            <h4 style="font-family: long">Flower Hair Bun(Rs.120/-)</h4>
                            
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid top-featured">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <
                            </div>
                            <img src="images/jw1.jpg" class="img-fluid" alt="Image">
                            
                        </div>
                        <div class="why-text">
                            <h4 style="font-family: long">Maharashtrian Thushi (Rs.550/-)</h4>
                            
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                               
                            </div>
                            <img src="images/jw3.jpg" class="img-fluid" alt="Image">
                            
                        </div>
                        <div class="why-text">
                            <h4 style="font-family: long">Jhumka(Rs.115/-)</h4>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Products  -->

    <!-- Start Blog  -->
    
    <!-- End Blog  -->


    <!-- Start Instagram Feed  -->
    <center>_______________<span style="font-size:500%;color:yellow;">&hearts;</span>_______________</center>
    <strong><h1 style="font-family: long"><b><center>Gallery</center></b></h1></strong></br></br>
    <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/ins4.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/img125.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/p.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/ins2.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/img132.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/img128.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/img4.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/dd.jpg" alt="" />
                    <div class="hov-in">
                        <a><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/ee.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/img129.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/m.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/k.jpg" alt="" />
                    <div class="hov-in">
                        <a ><i class="fab fa"></i></a>
                    </div>
                </div>
            </div>
           
        </div>
    </div></br></br></br></br>
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