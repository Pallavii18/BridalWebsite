<%-- 
    Document   : print
    Created on : 11 Mar, 2024, 10:14:05 PM
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
    <script>
    function printPage() {
         var tableToPrint = document.getElementById('orderPrint').cloneNode(true);
        var newWindow = window.open('', '_blank');
        newWindow.document.body.appendChild(tableToPrint);
        newWindow.print();
    }
    </script>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
     <%
        String nm=(String)session.getAttribute("unm1");
        
        
        String cnm=null;
        String date=null;
        String pnm=null;
        String i=null;
        String qunty=null;
        String tpr=null;
        String add=null;
        String pay=null;
        
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
               <div class="collapse navbar-collapse" id="navbar-menu" style="font-family: long" >
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="clienthomepage.jsp">Home</a></li>
                        
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
                      <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Print</center></h2>
                   <form>
                       <table id="orderPrint" border="2" width="500px" height="400px" bgcolor="pink">
                          <%
                                Statement st = null;
                                Statement st2 = null;
                                ResultSet rs = null;
                                ResultSet rs2 = null;
                                try {
                                    st = con.createStatement();
                                    st2 = con.createStatement();
                                    String str = "select * from confirm_order where customer_name='"+nm+"' ORDER BY order_id DESC LIMIT 1";
                                    String str2 = "select * from PAYMENT where customer_name='"+nm+"' ORDER BY recipt_no DESC LIMIT 1";
                                    rs = st.executeQuery(str);
                                    rs2 = st2.executeQuery(str2);
                                    if (rs2.next()) {
                                        i = rs2.getString(1);
                                        tpr = rs2.getString(7);
                                        add = rs2.getString(8);
                                        pay = rs2.getString(9);
                                    }
                                    if (rs.next()) {
                                        cnm = rs.getString(3);
                                        date = rs.getString(2);
                                        pnm = rs.getString(9);
                                        qunty = rs.getString(12);
                                    }
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                } finally {
                                    if (rs != null) rs.close();
                                    if (rs2 != null) rs2.close();
                                    if (st != null) st.close();
                                    if (st2 != null) st2.close();
                                }
                            %>
                            <tbody>
                               
                                 <tr>
                                    <td width="250px" align="center"><b>Recipt No</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtrno" value="<%=i%>"/></td>
                                </tr> 
                                
                                 <tr>
                                    <td width="250px" align="center"><b>Date</b></td>
                                    <td width="250px" align="center"><%=date%></td>
                                </tr> 
                              
                                 <tr>
                                    <td width="250px" align="center"><b>Customer Name</b></td>
                                    <td width="250px" align="center"><%=cnm%></td>
                                </tr> 
                                 <tr>
                                    <td width="250px" align="center"><b>Product Name</b></td>
                                    <td width="250px" align="center"><%=pnm%></td>
                                </tr> 
                                 <tr>
                                    <td width="250px" align="center"><b>Quantity</b></td>
                                    <td width="250px" align="center"><%=qunty%></td>
                                </tr>   
                                 </tr> 
                                    <tr>
                                    <td width="250px" align="center"><b>Total Amount</b></td>
                                    <td width="250px" align="center"><%=tpr%></td></td>
                                </tr> 
                               <tr>
                                    <td width="250px" align="center"><b>Deliver Address</b></td>
                                    <td width="250px" align="center"><%=add%></td></td>
                                </tr> 
                                 <tr>
                                    <td width="250px" align="center"><b>Payment</b></td>
                                    <td width="250px" align="center"><%=pay%></td>
                                 </tr>
                                
                               
                          </tbody>

                            </table>
                                    <div style="text-align: center">
                                        <button type="button" onclick="printPage()">Print</button>
                                        <input type="button" onclick="location.href='clienthomepage.jsp';" value="Back"/>
                                    </div>
                        </form>
                 </div>
            </div>
            <div class="row my-5">
               
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