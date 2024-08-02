<%-- 
    Document   : reportsearchmakeup
    Created on : 13 Mar, 2024, 10:34:05 AM
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
 <script language="javascript">
        function editRecord(id)
        {
            var f = document.form;
            f.method="post";
            f.action='bookappoinment.jsp?id=' +id;
            f.submit();
        }
    </script>
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
               <div class="collapse navbar-collapse" id="navbar-menu"  style="font-family: long">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
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
                   
                </div>
            </div>
        </div>
    </div></br>
    <!-- End All Title Box -->

    <!-- Start About Page  -->

<div class="about-box-main" style="font-family: long">
        <div class="container">
            <div class="row">
				
                <div class="col-lg-6">
                    </br></br>
                      <center>_______________<span style="font-size:500%;color:cadetblue;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Search Makeup Report</center></h2>
                    <form method="post" name="form">
                        <center><table border="2" width="50px" height="50px">
                           
                            <tbody>
                                
                                <tr> 
                                  
                                    
                                </tr>                                                     
                                 <tr>
                                   <tr><td>SerialNo</td><td>ParlerName</td><td>MakeUpType</td><td>PackageName</td><td>Price</td><td>Image</td><td>AdminName</td><td>MobileNo</td><td>Description</td></tr>
                                </tr>
                   <%
                   int sno=0;
                   String pnm=null;
                   String mtype=null;
                   String pacnm=null;
                   int pr=0;
                   String img=null;
                   String anm=null;
                   String mob=null;
                   String des=null;
                   
                         String img1=null;
                                Statement st=con.createStatement();
                                {
                                    String str="select * from add_makeup_info";
                                     ResultSet rs=st.executeQuery(str);
                                        while(rs.next())
                                         {
                                             sno=rs.getInt(1);
                                             pnm=rs.getString(2);
                                             mtype=rs.getString(3);
                                             pacnm=rs.getString(4);
                                             pr=rs.getInt(5);
                                             img=rs.getString(6);
                                             img1="images//"+img;
                                             anm=rs.getString(7);
                                             mob=rs.getString(8);
                                             des=rs.getString(9);
                            
                                    %>
                                    <tr><td><%=sno%></td><td><%=pnm%></td><td><%=mtype%></td><td><%=pacnm%></td><td><%=pr%></td><td><img src=" <%=img1%>" width="120" height="120"/>
                                        </td><td><%=anm%></td><td><%=mob%></td><td><%=des%></td><td align="center"><input type="button"name="BookNow" value="BookNow"style="background-color: cornflowerblue;font-weight: bold;color: white;"onclick="editRecord(<%=rs.getInt(1)%>)"/></td></tr>
                                    <%             }
                                }%>
                          </tbody>
                            </table></center>
                                
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

