<%-- 
    Document   : productinfo
    Created on : 1 Dec, 2023, 10:41:51 AM
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
    <%
  String nm=(String)session.getAttribute("anm1");
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
               <div class="collapse navbar-collapse" id="navbar-menu" style="font-family: long;font-size: 17px">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link"  href="adminhomepage.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link"  href="addmakeupinfo.jsp">AddMakeUpInfo</a></li>
                       
                        <li class="nav-item"><a class="nav-link" href="productinfo.jsp">ProductInfo</a></li>
                        <li class="nav-item"><a class="nav-link"  href="searchproductorder.jsp">SearchOrder</a></li>
                        <li class="nav-item"><a class="nav-link"  href="searchmakeupappoinment.jsp">SearchAppoinment</a></li>
                        
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
    <div class="about-box-main" style="font-family: long">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="images/img101.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6"></br>
                    <center>_______________<span style="font-size:500%;color:purple;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Product <span> Information</center></span></h2>
                    <form>
                        <table border="2" width="500px" height="400px" bgcolor="lavender">
                           
                            <tbody>
                                  <%
                                int a=0;
                                Statement st=con.createStatement();
                                String str="select count(*) from product_info";
                                ResultSet rs=st.executeQuery(str);
                                if(rs.next())
                                {
                                a=rs.getInt(1);
                                a++;
                                }
                                %>
                                <tr>
                                    <td width="250px" align="center"><b>Serial No</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtsno" value="<%=a%>"readonly="true" /></td></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Product Category</b></td>
                                    <td width="250px" align="center"><select name="drppcatgry">
                                            <option>Select</option>
                                            <option>Bangles</option>
                                            <option>Jewellery</option>
                                            <option>Jhumke</option>
                                             <option>Makeup</option>
                                            <option>Others</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Product Name</b></td>
                                    <td width="250px" align="center"><select name="drppnm">
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
                                <%
                                String img=request.getParameter("upload");
                                File f=new File("images//"+img);
                                String img1="images//"+img;
                                
                                %>
                                <tr>
                                    <td width="250px" align="center"><b>ImagePath</b></td>
                                    <td width="250px" align="center"><input type="file" name="upload" value=""/><input type="submit" value="Browse" name="Browse" /></td>
                                </tr>
                                <tr>
                                    <td align="center"><b>Product Image</b></td>
                                    <td><img src="<%=img1%>" width="100px" height="100px"/></td>
                                </tr>
                                 <tr>
                                    <td width="250px" align="center"><b>Price</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtpri" value="" /></td>
                                </tr>
                                 <tr>
                                    <td width="250px" align="center"><b>Product Information</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtpinfo" value="" /></td>
                                </tr>
                                 
                                <%
                                String anm=null;
                                String add=null;
                               String mob=null;
                                Statement st2=con.createStatement();
                          
                              String str2="select * from admin_registration where user_name='"+nm+"' ";
                              ResultSet rs2=st2.executeQuery(str2);
                              while(rs2.next())
                                {
                                    anm=rs2.getString(1);
                                    mob=rs2.getString(2);
                                    add=rs2.getString(3);
                                }
                                %>
                                 <tr>
                                     <td width="250px" align="center"><b>Admin Name</b></td>
                                     <td width="250px" align="center"><%=anm%></td>
                                </tr>
                                <tr>
                                     <td width="250px" align="center"><b>Mobile No</b></td>
                                    <td width="250px" align="center"><%=mob%></td>
                                </tr>
                                <tr>
                                     <td width="250px" align="center"><b>Address</b></td>
                                    <td width="250px" align="center"><%=add%></td>
                                </tr>
                               
                                
                            <td  width="250px" align="center"colspan="2"><input type="submit" value="Submit" name="Submit" style="background-color:lavender" /></td>
                                 
                             
                               
                               
                            </tbody>
                        </table>
<%
String sno = request.getParameter("txtsno");
String pcatgry = request.getParameter("drppcatgry");
String pnm = request.getParameter("drppnm");
String pri = request.getParameter("txtpri");
String pinfo = request.getParameter("txtpinfo");


if(sno!=null && sno!="" && pcatgry!=null && pcatgry!="" && pnm!=null && pnm!="" && pri!=null && pri!="" && pinfo!=null && pinfo!="" && add!=null && add!="" )
{
 Statement st1=con.createStatement();
 String str1="insert into product_info(serial_no,product_category,product_name,imagepath,price,product_info,admin_name,mobile_no,address)values("+sno+",'"+pcatgry+"','"+pnm+"','"+img1+"',"+pri+",'"+pinfo+"','"+anm+"','"+mob+"','"+add+"')";
 int c=st1.executeUpdate(str1);
 out.println("<script>alert('Your Product Information Added')</script>");
 
}

%>
                    </form>
                    </br></br></br>
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
