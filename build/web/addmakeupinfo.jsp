<%-- 
    Document   : addmakeupinfo
    Created on : 1 Dec, 2023, 1:44:16 AM
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
               
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                 <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" style="font-family: long;font-size: 17px" href="adminhomepage.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" style="font-family: long;font-size: 17px" href="addmakeupinfo.jsp">AddMakeUpInfo</a></li>
                       
                        <li class="nav-item"><a class="nav-link" style="font-family: long;font-size: 17px" href="productinfo.jsp">ProductInfo</a></li>
                        <li class="nav-item"><a class="nav-link" style="font-family: long;font-size: 17px" href="searchproductorder.jsp">SearchOrder</a></li>
                        <li class="nav-item"><a class="nav-link" style="font-family: long;font-size: 17px" href="searchmakeupappoinment.jsp">SearchAppoinment</a></li>
                        
                        <li class="nav-item"><a class="nav-link" style="font-family: long;font-size: 17px"  href="logout.jsp">LogOut</a></li>
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
                 
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <div class="about-box-main" style="font-family: long;">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="images/img89.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top" style="font-family: long;"><center>Add <span>Makeup Information</center></span></h2>
                    <form>
                        <table border="2" width="500px" height="400px" bgcolor="pink">
                           
                            <tbody>
                                <%
                                int a=0;
                                Statement st=con.createStatement();
                                String str="select count(*) from add_makeup_info";
                                ResultSet rs=st.executeQuery(str);
                                if(rs.next())
                                {
                                a=rs.getInt(1);
                                a++;
                                }
                                %>
                               <tr>
                                    <td width="250px" align="center"><b>Serial No</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtsno" value="<%=a%>"readonly="true" /></td>
                                </tr>
                                
                                <tr>
                                    <td width="250px" align="center"><b>Parler Name</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtpnm" value=""/></td>
                                </tr>    
                                <tr>
                                    <td width="250px" align="center"><b>Makeup Type</b></td>
                                    <td width="250px" align="center"><select name="drpmtype">
                                            <option>Select</option>
                                            <option>HD Makeup</option>
                                            <option>3D Makeup</option>
                                            <option>Waterproof Makeup</option>
                                            <option>Matte Makeup</option>
                                            <option>Shimmery Makeup</option>
                                            <option>Mineral Makeup </option>
                                            <option>Natural Minimal Makeup</option> 
                                        </select></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"><b>Package Name</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtpacnm" value="" /></td>
                                </tr>
                                 <tr>
                                    <td width="250px" align="center"><b>Price</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtpri" value="" /></td>
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
                                    <td align="center"><b>Image</b></td>
                                    <td><img src="<%=img1%>" width="100px" height="100px"/></td>
                                </tr>
                                <%
                                String anm=null;
                                String mob=null;
                                
                                Statement st1=con.createStatement();
                                 String str1="select * from admin_registration where user_name='"+nm+"'";
                                   ResultSet rs1=st1.executeQuery(str1);
                                    while(rs1.next())
                                    {
                                      
                                        anm=rs1.getString(1);
                                        mob=rs1.getString(2);
                                         
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
                                    <td width="250px" align="center"><b>Description</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtde" value="" /></td>
                                </tr>
                                
                             <td  width="25px" align="center"colspan="2"><input type="submit" value="Submit" name="Submit" style="background-color: palevioletred" />
                                   
                             
                               
                               
                            </tbody>
                        </table>
<%
String sno = request.getParameter("txtsno");
String pnm = request.getParameter("txtpnm");
String mtype = request.getParameter("drpmtype");
String pacnm = request.getParameter("txtpacnm");
String pri = request.getParameter("txtpri");
String imgpath = request.getParameter("upload");
String de = request.getParameter("txtde");


if(sno!=null && sno!="" && pnm!=null && pnm!="" && mtype!=null && mtype!="" && pacnm!=null && pacnm!="" && pri!=null && pri!="" && imgpath!=null && imgpath!=""  && de!=null && de!="")
{
 Statement stmt=con.createStatement();
 String stri="insert into add_makeup_info(id,parler_name,makeup_type,package_name,price,imagepath,admin_name,mobile_no,description)values ("+sno+",'"+pnm+"' ,'"+mtype+"','"+pacnm+"',"+pri+",'"+imgpath+"','"+anm+"','"+mob+"','"+de+"')";
 int b=stmt.executeUpdate(stri);
 out.println("<script>alert('Your MakeUp Information Added')</script>");
}

%>
                    </form>
                   
                </div>
            </div>
            <div class="row my-5">
               
            </div>
            <div class="row my-4" style="font-family: long;">
                <div class="col-12">
                    <h2 class="noo-sh-title" style="font-family: long;"><center>Meet Our Team</center></h2>
                     <center>_______________<span style="font-size:500%;color:orange;">&hearts;</span>_______________</center>

                </div></br></br>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/img73.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Billy Manik</h3> <span class="post">Bollywood Makeup Artist</span> </div>
                            <ul class="social">
                               
                            </ul>
                            
                        </div>
                        <div class="team-description">
                            <p >Hailing from Mumbai, Billy spoke to CMU about creating a name for herself in Bollywood, becoming a well-renowned celebrity makeup artist working on a variety of shoots from films to magazines and working with leading Indian actresses like Madhuri Dixit, Tamannaah Bhatia, Alia Bhatt, Yami Gautam </p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/img77.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title" style="font-family: long;">Trupti Rane</h3> <span class="post">Makeup Artist</span> </div>
                            <ul class="social">
                               
                            </ul>
                           
                        </div>
                        <div class="team-description">
                            <p>Trupti Rane, Pro Makeup Artist & Hairstylist, is a freelance makeup artist based in Bangalore. You can rely on her skills to turn you into a perfect bride for all your wedding ceremonies, from mehndi to reception. She understands that everyone has a vision of how she wishes to look on her big day. </p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/img91.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Vaishnavi Reke</h3> <span class="post">Makeup Artist</span> </div>
                            <ul class="social">
                               
                            </ul>
                            
                        </div>
                        <div class="team-description">
                            <p>I have over 5 years experience in the world of makeup and beauty and am passionate about making each and every client feel fabulous in their own skin. My true passion is makeup but over the years I have added numerous beauty treatments to my skill set which I feel further enhances my offering to all my clients. </p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/img80.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Pratiksha Thorat</h3> <span class="post">Professional Makeup Artist</span> </div>
                            <ul class="social">
                               
                            </ul>
                            
                        </div>
                        <div class="team-description">
                            <p>Pratiksha Thorat, Professional Makeup Artist & Hairstylist, is a freelance makeup artist . You can rely on her skills to turn you into a perfect bride for all your wedding ceremonies, from mehndi to reception. She understands that everyone has a vision of how she wishes to look on her big day. </p>
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
