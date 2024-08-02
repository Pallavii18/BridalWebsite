<%-- 
    Document   : orderproduct
    Created on : 2 Dec, 2023, 1:05:26 AM
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
        String nm=(String)session.getAttribute("unm1");
    %>
    <!-- Start Main Top -->
       <%
    String d1=request.getParameter("sno");
   
    %>
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
                <div class="collapse navbar-collapse" id="navbar-menu"  style="font-family: long">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="clienthomepage.jsp">Home</a></li>
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
                   
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <div class="about-box-main"  style="font-family: long">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="images/buy.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Order <span> Product</center></span></h2>
                    <form>
                        <table border="2" width="500px" height="400px" bgcolor="lightpink">
                           
                            <tbody>
                               
                               
                                
                                 <%
                                   
                                    String cnm=null;
                                    String mob=null;
                                    String add=null;
                                     
                                    Statement st1=con.createStatement();
                                    String str1="select * from client_registration where user_name='"+nm+"' ";
                                    ResultSet rs1=st1.executeQuery(str1);
                                    while(rs1.next())
                                    {
                                      
                                        cnm=rs1.getString(1);
                                        mob=rs1.getString(2);
                                        add=rs1.getString(3);
                                        
                                    }
                                    
                                %>
                                 <tr>
                                     <td width="250px" align="center"><b>Customer Name</b></td>
                                    <td width="250px" align="center"><%=cnm%></td>
                                </tr>
                                 <tr>
                                     <td width="250px" align="center"><b>Mobile No</b></td>
                                    <td width="250px" align="center"><%=mob%></td>
                                </tr>
                                 <tr>
                                     <td width="250px" align="center"><b>Address</b></td>
                                    <td width="250px" align="center"><%=add%></td>
                                </tr>
                                 <%
                                int d=0;
                                Statement st2=con.createStatement();
                                String str2="select count(*) from order_product";
                                ResultSet rs2=st2.executeQuery(str2);
                                if(rs2.next())
                                {
                                d=rs2.getInt(1);
                                d++;
                                }
                                %>
                                <tr>
                                     <td width="250px" align="center"><b>Id</b></td>
                                    <td width="250px" align="center"><%=d1%></td>
                                </tr>
                                 <%
                               
                                 String pcatgry=null;
                                String pnm=null;
                                 int pri=0;
                                
                                  String anm=null;
                                  String mob1=null;
                              
                                
                                Statement st4=con.createStatement();
                              String str4="select * from product_info where serial_no="+d1+" ";
                              ResultSet rs4=st4.executeQuery(str4);
                              while(rs4.next())
                                {
                                    
                                    pcatgry=rs4.getString(2);
                                   pnm=rs4.getString(3);
                                   pri=rs4.getInt(5);
                                   
                                     anm=rs4.getString(7);
                                     mob1=rs4.getString(8);
                                     
                                }
                                %>
                                <tr>
                                    <td width="250px" align="center"><b>Product Category</b></td>
                                     <td width="250px" align="center"><%=pcatgry%></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Product Name</b></td>
                                    <td width="250px" align="center"><%=pnm%></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Price</b></td>
                                    <td width="250px" align="center"><%=pri%></td>
                                </tr>
                             
                              
                                <tr>
                                    <td width="250px" align="center"><b>Admin Name</b></td>
                                    <td width="250px" align="center"><%=anm%></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Mobile No</b></td>
                                    <td width="250px" align="center"><%=mob1%></td>
                                </tr>
                               
                                
                            <td  width="250px" align="center"colspan="2" style="background-color: palevioletred"><a href="confirmorder.jsp"><h1>Next</h1></a></td>
                                   
                             
                               
                               
                            </tbody>
                        </table>
<%
String d2=String.valueOf(d1);
session.setAttribute("sno",d2);
session.setAttribute("cnm1", cnm);
session.setAttribute("mob1", mob);
session.setAttribute("add1", add);

session.setAttribute("pcatgry1", pcatgry);
session.setAttribute("pnm1", pnm);
String pri1=String.valueOf(pri);
session.setAttribute("pri2", pri1);

session.setAttribute("anm1", anm);
session.setAttribute("mob2", mob1);
%>
                    </form>
                    </br></br>
                </div>
            </div>
            <div class="row my-5">
               
            </div>
            <div class="row my-4"  style="font-family: long">
                <div class="col-12">
                    <center>  <h2 class="noo-sh-title">More Products</h2></center>
                    <center>_______________<span style="font-size:500%;color:tomato;">&hearts;</span>_______________</center>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/j5.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Bride Jhumka</h3> <span class="post">Rs.150/-</span> </div>
                            <ul class="social">
                               
                            </ul>
                            
                        </div>
                        <div class="team-description">
                            
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/b4.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Green Bangles</h3> <span class="post">Rs.500/-</span> </div>
                            <ul class="social">
                               
                            </ul>
                           
                        </div>
                        <div class="team-description">
                           
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/je1.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Neckless</h3> <span class="post">Rs.550/-</span> </div>
                            <ul class="social">
                               
                            </ul>
                            
                        </div>
                        <div class="team-description">
                           
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/h1.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Hair Bun</h3> <span class="post">Rs.115/-</span> </div>
                            <ul class="social">
                               
                            </ul>
                            
                        </div>
                        <div class="team-description">
                          
                        </div>
                        <hr class="my-0"> </div>
                </div>
            </div>
        </div>
    </div>
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
