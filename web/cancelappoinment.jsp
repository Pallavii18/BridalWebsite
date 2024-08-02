<%-- 
    Document   : cancelappoinment
    Created on : 29 Jan, 2024, 7:27:53 AM
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
                        
                        <li class="nav-item"><a class="nav-link" href="searchmakeup.jsp">Search MakeUp</a></li>
                        
                        
                         <li class="nav-item"><a class="nav-link" href="cancelappoinment.jsp">Cancel Appoinment</a></li>
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
                    <div class="banner-frame"> <img class="img-fluid" src="images/cm2.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Cancel <span>Appoinment</center></span></h2>
                    <form>
                        <table border="2" width="500px" height="400px" bgcolor="lightpink">
                           
                            <tbody>
                               
                                <%
                                int e=0;
                                Statement st2=con.createStatement();
                                String str2="select count(*) from cancel_appoinment";
                                ResultSet rs2=st2.executeQuery(str2);
                                if(rs2.next())
                                {
                                e=rs2.getInt(1);
                                e++;
                                }
                                %>
                                <tr>
                                    <td width="250px" align="center"><b>Cancel No</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtcno" value="<%=e%>" /></td>
                                </tr>
                                 <tr>
                                     <td width="250px" align="center"><b>Cancel Date</b></td>
                                    <td width="250px" align="center"><input type="date" name="txtcdate" value="" /></td>
                                </tr>
                                <%
                                
                                String oid=request.getParameter("txtoid");
                                String odate = request.getParameter("odate");
                                String cnm = request.getParameter("cnm");
                                String pnm = request.getParameter("pnm");
                                String mtype= request.getParameter("mtype");
                                Statement st=con.createStatement();
                                if(oid!=null && oid!="" )
                                    
                               {
                               String str1="select * from appoinment_confirm where client_name='"+nm+"' and order_id="+oid+""; 
                               ResultSet rs1=st.executeQuery(str1);
                               while(rs1.next())
                               {
                                   oid=rs1.getString(1);
                                   odate=rs1.getString(2);
                                   cnm=rs1.getString(3);
                                   pnm=rs1.getString(7);
                                   mtype=rs1.getString(8);
                               }
                                    
                               }
                                
                                %>
                                 <tr>
                                     <td width="250px" align="center"><b>Appoinment Id</b></td>
                                     <td width="250px" align="center"><input type="text" name="txtoid" value=""/><input type="submit" value="Find" name="Find"/></td>
                                </tr>
                                  <tr>
                                     <td width="250px" align="center"><b>Appoinment Date</b></td>
                                  <td width="250px" align="center"><%=odate%></td>
                                </tr>
                                 <tr>
                                     <td width="250px" align="center"><b>Client Name</b></td>
                                    <td width="250px" align="center"><%=cnm%></td>
                                </tr>
                                 <tr>
                                     <td width="250px" align="center"><b>Parler Name</b></td>
                                  <td width="250px" align="center"><%=pnm%></td>
                                </tr>
                                 
                                 <tr>
                                     <td width="250px" align="center"><b>MakeUp Type</b></td>
                                    <td width="250px" align="center"><%=mtype%></td>
                                 </tr>
                                  <tr>
                                   <td width="250px" align="center"><b>Reason </b></td>
                                     <td><textarea name="txtfeed" rows="4" cols="20"></textarea></td>
                                 </tr>
                             <td  width="250px" align="center"colspan="2"><input type="submit" value="Cancel" name="Cancel" style="background-color: palevioletred"  />
                                    
                               
                            </tbody>
                        </table>
<%
String cdate=request.getParameter("txtcdate");
String oid1=request.getParameter("txtoid");
String rea=request.getParameter("txtfeed");
if(cdate!=null && cdate!="" && oid1!=null && oid1!="" && rea!=null && rea!="")
{
  Statement st1=con.createStatement();
    String str1="insert into cancel_appoinment(cancel_no,cancel_date,order_id,order_date,client_name,parler_name,makeup_type,reason)values("+e+",'"+cdate+"',"+oid1+",'"+odate+"','"+cnm+"','"+pnm+"','"+mtype+"','"+rea+"')";
   int a=st1.executeUpdate(str1);
    out.println("<script>alert('Your Appoinment Cancelled...')</script>");
            
    
}
%>
                   </form>
                    </br></br>
                </div>
            </div>
            <div class="row my-5">
               
            </div>
            <div class="row my-4" style="font-family: long">
                
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
