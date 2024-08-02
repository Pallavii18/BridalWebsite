<%-- 
    Document   : login
    Created on : 1 Dec, 2023, 12:58:39 AM
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
    <!-- Start Main Top -->
    
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
               
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                      <li class="nav-item"><a class="nav-link" style="font-family: long; font-size: 20px" href="login.jsp">Client Login</a></li>
                        <li class="nav-item"><a class="nav-link" style="font-family: long; font-size: 20px" href="logout.jsp">LogOut</a></li>
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
                    <div class="banner-frame"> <img class="img-fluid" src="images/login.jpg" alt="" />
                    </div>
                                </div>
                
               
                <div class="col-lg-6"></br></br></br></br></br>
                     <center>_______________<span style="font-size:500%;color:lightseagreen;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Login</center></h2>
                    </br>
                    <form>
                        <center><table border="2" width="400px" height="200px" bgcolor="lightblue"></center>
                           
                            <tbody>
                                <tr >
                                     <td width="250px" align="center"><h1><b>User Name</b></h1></td>
                                    <td width="250px" align="center"><input type="text" name="txtunm" value="" /></td>
                                </tr>
                                <tr>
                                     <td width="250px" align="center"><h1><b>Password</b></h1></td>
                                    <td width="250px" align="center"><input type="password" name="txtpass" value="" /></td>
                                </tr>
                                
                                <tr> 
                                    <td  width="250px" align="center"colspan="2"><h1><b><input type="submit" value="Login" name="Login" style="background-color: lightseagreen" /></b></h1></td>
                                   
                                </tr>
                            <td  width="250px" align="center"colspan="2" style="background-color: lightseagreen" ><a href="clientregistration.jsp"><h1>Sign Up</h1></a></td>
                            </tbody>
                        </table>

                             <%
                            String unm=request.getParameter("txtunm");
                            String pass=request.getParameter("txtpass");
                            Statement st=con.createStatement();
                            if(unm!=null && unm!=""&& pass!=null && pass!="")
                            {
                            String str="select * from client_registration where user_name='"+unm+"' and password='"+pass+"'";
                            ResultSet rs=st.executeQuery(str);
                            if(rs.next())
                            {
                                out.println("<script>alert('Login Sucess')</script>");
                                session.setAttribute("unm1", unm);
                                response.sendRedirect("clienthomepage.jsp");
                            }
                            else
                            {
                                out.println("<script>alert('Login Failed')</script>");
                                 //response.sendRedirect("clientregistration.jsp");
                            }
                            }
                            %>
                    </form>
                    </br></br></br>
                  </div>
            <div class="row my-5"> </div>
            <div class="row my-4">
                <div class="col-12">
                  
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    
                </div>
                <div class="col-sm-6 col-lg-3">
                    
                </div>
                <div class="col-sm-6 col-lg-3">
                   
                </div>
                <div class="col-sm-6 col-lg-3">
                    
                </div>
            </div>
        </div>
     </div>
  </div></br></br>      
    <!-- End About Page -->

    <!-- Start Instagram Feed  -->
    
    <!-- End Instagram Feed  -->

    <!-- Start Footer  -->
   
    <!-- End Footer  -->

    <!-- Start copyright  -->
</br></br></br> <div class="footer-copyright">
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
