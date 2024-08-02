<%-- 
    Document   : payment
    Created on : 7 Feb, 2024, 2:47:51 AM
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
    <%
        String cnm=(String)session.getAttribute("cnm1");
        String pnm=(String)session.getAttribute("pnm1");
        String qunty=(String)session.getAttribute("qunty1");
        String pri=(String)session.getAttribute("pri2");
        String add=(String)session.getAttribute("add1");
        
       
    %>
    <!-- End Main Top -->
    
    <!-- Start Main Top -->
    <header class="main-header" style="font-family: long">
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
                        <li class="nav-item"><a class="nav-link" href="payment.jsp">Payment</a></li>
                          
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
                    <div class="banner-frame"> <img class="img-fluid" src="images/pay2.jpg" height="800" width="700" alt="" />
                    </div>
    </div>		
                <div class="col-lg-6">
                    </br></br>
                      <center>_______________<span style="font-size:500%;color:cadetblue;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center>Payment</center></h2>
                    <form>
                       <table border="2" width="500px" height="400px" bgcolor="lightblue">
                           
                            <tbody>
                                <%
                                int a=0;
                                Statement st=con.createStatement();
                                String str="select count(*) from payment";
                                ResultSet rs=st.executeQuery(str);
                                if(rs.next())
                                {
                                a=rs.getInt(1);
                                a++;
                                }
                                
                                %>
                                 <tr>
                                    <td width="250px" align="center"><b>Recipt No</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtrno" value="<%=a%>"/></td>
                                </tr> 
                                
                                 <tr>
                                    <td width="250px" align="center"><b>Delivery Date</b></td>
                                    <td width="250px" align="center"><input type="date" name="txtdate" value=""/></td>
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
                                    <tr>
                                    <td width="250px" align="center"><b>Price</b></td>
                                    <td width="250px" align="center"><%=pri%></td>
                                </tr>  
                                <%
                                int qty=Integer.parseInt(qunty);
                                int rate=Integer.parseInt(pri);
                                int tot=0;
                                tot=qty*rate;
                                %>
                                 </tr> 
                                    <tr>
                                    <td width="250px" align="center"><b>Total Amount</b></td>
                                    <td width="250px" align="center"><%=tot%></td></td>
                                </tr> 
                               <tr>
                                    <td width="250px" align="center"><b>Deliver Address</b></td>
                                    <td width="250px" align="center"><%=add%></td></td>
                                </tr> 
                                 <tr>
                                    <td width="250px" align="center"><b>Payment</b></td>
                                    <td width="250px" align="center"><input type="text" name="txtpay" value="Cash On Delivery" readonly="true"/></td>
                                 </tr>
                                
                               <tr> 
                                    <td  width="250px" align="center"colspan="2"><h1><b><input type="submit" value="Confirm" name="Confirm" style="background-color: lightseagreen" /></b></h1></td>
                                   
                                </tr>
                               
                          </tbody>

                            </table>
                                   
<%

String date = request.getParameter("txtdate");
String pay=request.getParameter("txtpay");
if(date!=null && date!="" && pay!=null && pay!="" )
    {
    Statement st3=con.createStatement();
    String str2="insert into payment(recipt_no,date,customer_name,product_name,quantity,price,amount,address,payment)values("+a+",'"+date+"','"+cnm+"','"+pnm+"',"+qunty+","+pri+","+tot+",'"+add+"','"+pay+"')";
    int b=st3.executeUpdate(str2);
    out.println("<script>alert('Order Placed Successfully..');"
    + "window.location='print.jsp';</script>");
   
}

%>
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

