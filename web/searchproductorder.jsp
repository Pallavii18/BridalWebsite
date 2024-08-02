<%-- 
    Document   : searchproductorder
    Created on : 2 Dec, 2023, 3:27:47 AM
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
    <header class="main-header">
            <marquee><b><h1><%=nm%></h1></b></marquee>
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
               <div class="collapse navbar-collapse" id="navbar-menu" style="font-family: long;font-size: 17px">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link"  href="adminhomepage.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link"  href="addmakeupinfo.jsp">AddMakeUpInfo</a></li>
                       
                        <li class="nav-item"><a class="nav-link"  href="productinfo.jsp">ProductInfo</a></li>
                        <li class="nav-item"><a class="nav-link" href="searchproductorder.jsp">SearchOrder</a></li>
                        <li class="nav-item"><a class="nav-link" href="searchmakeupappoinment.jsp">SearchAppoinment</a></li>
                        
                        <li class="nav-item"><a class="nav-link"   href="logout.jsp">LogOut</a></li>
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
                   
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
				
                <div class="col-lg-6">
                    
                     <center>_______________<span style="font-size:500%;color:lightgreen;">&hearts;</span>_______________</center>
                     <h2 class="noo-sh-title-top"><center>Search Product Order</center></h2></br></br>
                    <form>
                        <center><table border="2" width="300px" height="100px" bgcolor="lightgreen">
                           
                               <%
                                String anm1=null;
                                
                                
                                Statement st1=con.createStatement();
                                 String str1="select * from admin_registration where user_name='"+nm+"'";
                                   ResultSet rs1=st1.executeQuery(str1);
                                    while(rs1.next())
                                    {
                                        anm1=rs1.getString(1);
                                      
                                    }
                                       
                            
                                
                                %>  
                                
                                
                                
                                
                            <tbody>
                                <tr>
                                    <td width="250px" align="center"colspan="7"><b>Check Order Date</b></td>
                                    <td width="250px" align="center"colspan="7"><input type="date" name="txtcodate" value="" /></td>
                                </tr>
                               
                                <tr> 
                                    <td  width="250px" align="center" colspan="14"><h1><b><input type="submit" value="Search" name="Search" style="background-color:green" /></b></h1></td>
                                    
                                </tr>
                                <tr>
                                </tr><td>OrderId</td> <td>orderDate</td><td>CustomerName</td><td>MobileNo</td><td>Address</td><td>PinCode</td><td>Id</td><td>ProductCategory</td><td>Product Name</td><td>Price</td><td>Quantity</td><td>AdminName</td><td>MobileNo</td></tr>
                                </tr>
                                <%
                                int oid=0;
                                String odate=null;
                                String cnm=null;
                                String mob=null;
                                String add=null;
                                int pcode=0;
                                int id=0;
                                String pcatgry=null;
                                String pnm=null;
                              String pinfo=null;
                                int pr=0;
                                int qunty=0;
                                String anm=null;
                                String mob1=null;
                                
                                String codate = request.getParameter("txtcodate");
                                Statement st=con.createStatement();
                                if(codate!=null && codate!="" )
                             
                                    {
                    String str="select * from confirm_order where order_date ='"+codate+"' and admin_name='"+anm1+"'"; 
                     ResultSet rs=st.executeQuery(str);
                     while(rs.next())
                        {
                            oid=rs.getInt(1);
                            odate=rs.getString(2);
                            cnm=rs.getString(3);
                            mob=rs.getString(4);
                            add=rs.getString(5);
                            pcode=rs.getInt(6);
                            id=rs.getInt(7);
                            pcatgry=rs.getString(8);
                            pnm=rs.getString(9);
                         
                            pr=rs.getInt(10);
                             
                            qunty=rs.getInt(11);
                            anm=rs.getString(12);
                            mob1=rs.getString(13);
                            
                        }
                                    }
                            
                            
                        
                       
                                %>    
                                <tr><td><%=oid%></td><td><%=odate%></td><td><%=cnm%></td><td><%=mob%></td><td><%=add%></td><td><%=pcode%></td><td><%=id%></td><td><%=pcatgry%></td><td><%=pnm%><td><%=pr%></td><td><%=qunty%></td><td><%=anm%></td><td><%=mob1%></td>
                                </tr>
                                
                            </tbody>
                            </table></center>

                    </form></br>
                   
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
        <p class="footer-company"> Design By :pallaviiwalke
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
