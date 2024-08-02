<%-- 
    Document   : reportclientregistration
    Created on : 12 Mar, 2024, 3:32:43 AM
    Author     : palla
--%>
<%@include file="dbconnection.jsp" %>
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
  String nm=(String)session.getAttribute("anm1");
  
    
  %>
    <!-- Start Main Top -->
  
    <!-- End Main Top -->

    <!-- Start Main Top -->
      <header class="main-header"  style="font-family: long">
         <marquee><b><h1><%=nm%></h1></b></marquee>
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp" style="font-family: long">
                        <li class="nav-item active"><a class="nav-link" href="adminhomepage.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="orderproduct.jsp">OrderProduct</a></li>
                           <li class="nav-item"><a class="nav-link" href="bookappoinment.jsp">BookAppoinment</a></li>
                        <li class="nav-item"><a class="nav-link" href="searchmakeup.jsp">SearchMakeUp</a></li>
                        <li class="nav-item"><a class="nav-link" href="searchproduct.jsp">SearchProduct</a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.jsp">LogOut</a></li>
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

<div class="about-box-main" style="font-family: long">
        <div class="container">
            <div class="row">
				
                <div class="col-lg-6">
                  
                  <center>_______________<span style="font-size:500%;color:black;">&hearts;</span>_______________</center>
                     <center><h2 class="noo-sh-title-top"><center>Report Customer Registration</center></h2></br></center>
                    <div class="col-lg-6">
                        
                        <form method="post" name="form">
                       <table border="2" width="600px" height="150px"  >
                           
                              <tbody>
                              
                               
                                
                                <tr>
                                <tr><td><b><h2>Admin Name</h2></b></td><td><b><h2>Mobile No</h2><b></td><td><b><h2>Address</h2></b></td><td><b><h2>Email Id</h2></b></td></tr>
                                </tr>
                          

<%

String cnm=null;
String mob=null;
String add=null;
String email=null;




Statement st=con.createStatement();
        

String str="Select  client_name,mobile_no,address,email_id from client_registration ";
ResultSet rs=st.executeQuery(str);
   while(rs.next())
   {
    
    cnm=rs.getString(1);
    mob=rs.getString(2);
    add=rs.getString(3);
    email=rs.getString(4);
   
   

%>

<tr><td><%=cnm%></td><td><%=mob%></td><td><%=add%></td><td><%=email%></td></tr>


<%             
                                }%>

                         
                                    </tbody>
                            </table>
                           </form>
                                           
                                </br></br></br></br></br></br></br>
                </div>
                </div>
            <div class="row my-5">
               
            </div>
           <div class="row my-4">
                
                </div>
            </div>
        </div>
    </div></center>
     
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
