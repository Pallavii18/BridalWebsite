<%-- 
    Document   : appoinmentconfirm
    Created on : 17 Jan, 2024, 5:53:17 AM
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
     
    <!-- End Main Top -->
<%
String d2=(String)session.getAttribute("d1");
String cnm=(String)session.getAttribute("cnm1");
String mob=(String)session.getAttribute("mob1");
String add=(String)session.getAttribute("add1");

String parlernm=(String)session.getAttribute("palernm1");
String mtype=(String)session.getAttribute("mtype1");
String pacnm=(String)session.getAttribute("pacnm1");
String pr=(String)session.getAttribute("pr1");
String anm1=(String)session.getAttribute("anm1");
String mob1=(String)session.getAttribute("mob2");
%>
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
    <div class="about-box-main" style="font-family: long">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="images/ap1.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <center>_______________<span style="font-size:500%;color:coral;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Appoinment <span>Confirm</center></span></h2>
                    <form>
                        <table border="2" width="500px" height="400px" bgcolor="lightyellow">
                           
                            <tbody>
                               
                                
                                <%
                                int b=0;
                                Statement st2=con.createStatement();
                                String str2="select count(*) from appoinment_confirm";
                                ResultSet rs2=st2.executeQuery(str2);
                                if(rs2.next())
                                {
                                b=rs2.getInt(1);
                                b++;
                                }
                                %>
  
                                <tr>
                                    <td width="250px" align="center"><b>Order ID</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtoid" value="<%=b%>" readonly="true" /></td>
                                </tr>
                               <tr>
                                     <td width="250px" align="center"><b>Order Date</b></td>
                                    <td width="250px" align="center"><input type="date" name="txtodate" value="" /></td>
                                </tr>
                                
                                <tr>
                                     <td width="250px" align="center"><b>Client Name</b></td>
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
                                
                                 <tr>
                                     <td width="250px" align="center"><b>Id</b></td>
                                    <td width="250px" align="center"><%=d2%></td>
                                </tr>
                               
                               
                                 <tr>
                                    <td width="250px" align="center"><b>Parler Name</b></td>
                                    <td width="250px" align="center"><%=parlernm%></td>
                                </tr>
                                
                                 <tr>
                                    <td width="250px" align="center"><b>Makeup Type</b></td>
                                    <td width="250px" align="center"><%=mtype%></td>
                                </tr>
                                
                                 <tr>
                                    <td width="250px" align="center"><b>Package Name</b></td>
                                    <td width="250px" align="center"><%=pacnm%></td>
                                </tr>
                                
                                 <tr>
                                    <td width="250px" align="center"><b>Price</b></td>
                                    <td width="250px" align="center"><%=pr%></td>
                                </tr>
                                 
                                <tr>
                                    <td width="250px" align="center"><b>Admin Name</b></td>
                                    <td width="250px" align="center"><%=anm1%></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Mobile No</b></td>
                                    <td width="250px" align="center"><%=mob1%></td>
                                </tr>
                                
                             <td  width="250px" align="center"colspan="2"><input type="Submit" value="Confirm Appoinment" name="Confirm Appoinment" style="background-color: yellow"  />
                                                      
                            </tbody>
                        </table>
<%

String odate = request.getParameter("txtodate");

if(odate!=null && odate!="" )
 {
    Statement st5=con.createStatement();
   
   String str5="insert into appoinment_confirm(order_id,order_date,client_name,mobile_no,address,id,parler_name,makeup_type,package_name,price,admin_name,mobile_no1)values("+b+",'"+odate+"','"+cnm+"','"+mob+"','"+add+"',"+d2+",'"+parlernm+"','"+mtype+"','"+pacnm+"',"+pr+",'"+anm1+"','"+mob1+"')";
   int c=st5.executeUpdate(str5);
    out.println("<script>alert('Your Appoinment Confirmed')</script>");
   
}
%>
                  </form>
                   
               </div>
            </div>
            <div class="row my-5">
               
            </div>
            <div class="row my-4">
                
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
