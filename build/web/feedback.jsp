<%-- 
    Document   : feedback
    Created on : 29 Feb, 2024, 11:04:00 PM
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
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            margin: 50px auto;
            background: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 500px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            border: 2px solid #ccc;
        }

        input[type="text"],
        textarea {
            width: calc(100% - 20px);
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin-top: 5px;
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
            background-color: palevioletred;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        input[type="submit"]:hover {
            background-color: #d46a96;
        }
    </style>
</head>

<body>
  <%
        String nm=(String)session.getAttribute("unm1");
    %>
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
                <div class="collapse navbar-collapse" id="navbar-menu" style="font-family: long">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="adminhomepage.jsp">Home</a></li>
                       
                       
                        <li class="nav-item"><a class="nav-link" href="feedback.jsp">FeedBack</a></li>
                       
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
                   <h1>RK</h1>
                </div>
                </div>
            </div>
        </div>
    </div></br>
     <!-- End All Title Box -->

    <!-- Start About Page  -->
  
    
    <!-- End About Page -->
    
<center><div class="about-box-main" style="font-family: long">
        <div class="container">
            <div class="col-lg-6">
                    <center>_______________<span style="font-size:500%;color:palevioletred;">&hearts;</span>_______________</center>
                    <h2 class="noo-sh-title-top"><center> <span>FeedBack</span></h2>
                    <form>
                        <table border="2" width="450px" height="300px" bgcolor="pink">            
                            <tbody>
                               <tr>
                                   <td width="300px" align="center"><b><h2>Name</h2></b></td>
                                    <td width="300px" align="center"><input type="text" name="txtnm" value=""/></td>
                                </tr>
                               
                                <tr>
                                    <td width="300px" align="center"><b><h2>Email Id</h2></b></td>
                                     <td width="300px" align="center"><input type="text" name="txteid" value=""/></td>
                                </tr>
                                 <tr>
                                     <td width="300px" align="center"><b><h2>Feedback</h2></b></td>
                                    <td width="300px" align="center"><textarea name="txtfeed" rows="4" cols="20"></textarea></td>
                                </tr> 
                                
                            <td  width="30px" align="center" colspan="2"><input type="submit" value="Submit" name="Submit" style="background-color: palevioletred" />
                                   
                                 
                                   
                            </tbody>
                        </table>
                        <%
                        String nm1 =request.getParameter("txtnm");
                        String mailid =request.getParameter("txteid");
                        String feed =request.getParameter("txtfeed");
                        
                        if(nm1!=null && nm1!="" && mailid!=null && mailid!="" && feed!=null && feed!="")
                            {
                                Statement stmt=con.createStatement();
                                String str="insert into feedback(name,email_id,feedback)values('"+nm1+"','"+mailid+"','"+feed+"')";
                                 int b=stmt.executeUpdate(str);
                                out.println("<script>alert('Your Feedback Success')</script>");
                            }

                        %>
                </form>
           </div>
    </div>
 </div></center></br></br></br>

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
