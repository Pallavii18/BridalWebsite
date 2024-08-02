<%-- 
    Document   : reportmakeupappoinment
    Created on : 12 Mar, 2024, 2:08:03 AM
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
              
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse" id="navbar-menu" style="font-family: long">
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
                     <center><h2 class="noo-sh-title-top"><center>Report Confirm Order</center></h2></br></center>
                    <div class="col-lg-6">
                        
                        <center><form method="post" name="form">
                       <table border="2" width="250px" height="150px"  >
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
                                <center><tbody>
                              
                                <tr>
                                    <td width="250px" align="center"colspan="7"><b>Date</b></td>
                                    <td width="250px" align="center"colspan="7"><input type="date" name="txtcodate" value="" /></td>
                                </tr>
                                <tr>
                                    <td width="250px" align="center"colspan="7"><b>Admin Name</b></td>
                                    <td width="250px" align="center"colspan="7"><%=anm1%></td>
                                </tr>
                                <tr> 
                                    <td  width="250px" align="center" colspan="14"><h1><b><input type="submit" value="Search" name="Search" style="background-color:gray" /></b></h1></td>
                                    
                                </tr>
                                
                                <tr>
                                <tr width="400px" height="50px"><td><b><h2>OrderID</h2></b></td><td><b><h2>OrderDate</h2><b></td><td><b><h2>ClientName</h2></b></td><td><b><h2>MobileNo</h2></b></td><td><b><h2>Address</h2></b></td><td><b><h2>ID</h2></b></td><td><b><h2>ParlerName</h2></b></td><td><b><h2>MakeUpType</h2></b></td><td><b><h2>PackageName</h2></b></td><td><b><h2>Price</h2></b></td><td><b><h2>AdminName</h2></b></td><td><b><h2>MobileNo</h2></b></td></tr>
                                </tr>
                          

<%

int oid=0;
String odate=null;
String cnm=null;
String mob=null;
String add=null;

int id=0;
String pnm=null;
String mtype=null;
String pacnm=null;
int pr=0;

String anm=null;
String mob2=null;


String date1 = request.getParameter("txtcodate");

Statement st=con.createStatement();
        

  String str="select * from appoinment_confirm where order_date ='"+date1+"' and admin_name='"+anm1+"'"; 
                     ResultSet rs=st.executeQuery(str);
                     while(rs.next())
                        {
                             oid=rs.getInt(1);
                            odate=rs.getString(2);
                            cnm=rs.getString(3);
                            mob=rs.getString(4);
                            add=rs.getString(5);
                            id=rs.getInt(6);
                            pnm=rs.getString(7);
                            mtype=rs.getString(8);
                            pacnm=rs.getString(9);
                             pr=rs.getInt(10);
                              anm=rs.getString(11);
                            mob2=rs.getString(12);
%>

<tr><td><%=oid%></td><td><%=date1%></td><td><%=cnm%></td><td><%=mob%></td><td><%=add%></td><td><%=id%></td><td><%=pnm%></td><td><%=mtype%></td><td><%=pacnm%></td><td><%=pr%></td><td><%=anm%></td><td><%=mob2%></td></tr>


<%             
                                }%>

                         
                                    </tbody></center>
                            </table>
                           </form></center>
                                           
                                </br></br></br></br></br></br></br>
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
