<%--
    Document   : searchproduct
    Created on : 2 Dec, 2023, 2:41:15 AM
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
        function editRecord(sno)
        {
            var f = document.form;
            f.method="post";
            f.action='orderproduct.jsp?sno=' +sno;
            f.submit();
        }
    </script>
</head>

<body>
    <%
        String unm=(String)session.getAttribute("unm1");
        String nm=(String)session.getAttribute("anm1");
    %>
    
    <!-- Start Main Top -->
  
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
         <marquee><b><h1><%=unm%></h1></b></marquee>
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
<center><div class="col-lg-6">
        <center><div class="banner-frame"> <img class="img-fluid" src="images/search1.jpg" height="300" width="300" alt="" />
            </div></center>
    </div></center>
<div class="about-box-main"  style="font-family: long">
        <div class="container">
            <div class="row">				
                <div class="col-lg-6">             
                    <center>_______________<span style="font-size:500%;color:black;">&hearts;</span>_______________</center>
                     <h2 class="noo-sh-title-top"><center>Search Product</center></h2></br>
                    <div class="col-lg-6">
                        
                        <center><form method="post" name="form">
                       <table border="2" width="400px" height="150px" bgcolor="lightgray" >
                           
                                <center><tbody>
                               <tr>
                                    <td width="250px" align="center"colspan="5"><b>Product Category</b></td>
                                    <td width="250px" align="center"colspan="5"><select name="drppcatgry">
                                            <option>Select</option>
                                            <option>Bangles</option>
                                            <option>Jewellery</option>
                                            <option>Jhumke</option>
                                             <option>Makeup</option>
                                            <option>Others</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"colspan="5"><b>Product Name</b></td>
                                    <td width="250px" align="center"colspan="5"><select name="drppnm">
                                            <option>Select</option>
                                            <option>Chura</option>
                                            <option>Golden Jwellery</option>
                                            <option>Rajputana Jhumkas</option>
                                             <option>Ruby Red</option>
                                             <option>Pink lipstick</option>
                                            <option>Braided Bun</option>
                                              <option>Messy Bun</option>
                                        </select></td>
                                </tr>
                                <tr> 
                                    <td  width="250px" align="center" colspan="10"><h3><b><input type="submit" value="Search" name="Search" style="background-color:gray" /></b></h3></td>     
                                </tr>
                                <tr>
                                   <tr><td>SerialNo</td><td>ProductCategory</td><td >Product Name</td><td>Imagepath</td><td>Price</td><td align="center">ProductInfo</td><td>AdminName</td><td>MobileNo</td><td>Address</td></tr>
                                </tr>
                          

<%
int sno=0;

String img=null;
int pr=0;
String pinfo=null;

String anm=null;
String mob=null;
String add=null;
String img1=null;

String pcatgry = request.getParameter("drppcatgry");
String pnm = request.getParameter("drppnm");

 
Statement st=con.createStatement();
if(pcatgry!=null && pcatgry!="" && pnm!=null && pnm!="")
    

{
String str="Select * from product_info where product_category='"+pcatgry+"' and  product_name='"+pnm+"'";
ResultSet rs=st.executeQuery(str);
   while(rs.next())
   {
    sno=rs.getInt(1);
    pcatgry=rs.getString(2);
    pnm=rs.getString(3);
    img=rs.getString(4);
    img1="images//"+img;
    pr=rs.getInt(5);
    pinfo=rs.getString(6);
    anm=rs.getString(7);
    mob=rs.getString(8);
    add=rs.getString(9);
    
   

%>

<tr><td><%=sno%></td><td><%=pcatgry%></td><td><%=pnm%></td><td><img src="<%=img%>"  width="120" height="120"/></td><td><%=pr%></td><td><%=pinfo%></td><td><%=anm%></td><td><%=mob%></td><td><%=add%></td> <td align="center"><input type="button"name="Order" value="order"style="background-color: greenyellow;font-weight: bold;color: black; "onclick="editRecord(<%=rs.getInt(1)%>)"/></td></tr>


<%             }
                                }%>

                         
                                    </tbody></center>
                            </table>
                           </form></center>
                                           
                                </br></br></br></br></br></br></br>
                </div>
                </div>
            <div class="row my-5">
               
            </div>
           <div class="row my-4"  style="font-family: long">
                <div class="col-12">
                    <center>  <h2 class="noo-sh-title">More Products</h2></center>
                     <center>_______________<span style="font-size:500%;color:cadetblue;">&hearts;</span>_______________</center>
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
                                </br><br></br></br>
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
