package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class addmakeupinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/dbconnection.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bridal","root","root");
            
                    
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<!-- Basic -->\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("    <!-- Mobile Metas -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    <!-- Site Metas -->\n");
      out.write("    \n");
      out.write("    <meta name=\"keywords\" content=\"\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <!-- Site Icons -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("    <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <!-- Site CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <!-- Responsive CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("<style>\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            background-color: #f4f4f4;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            height: 100vh;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .about-box-main {\n");
      out.write("            background-color: #fff;\n");
      out.write("            padding: 40px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .about-box-main img {\n");
      out.write("            max-width: 100%;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-table {\n");
      out.write("            width: 100%;\n");
      out.write("            border-collapse: collapse;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-table td {\n");
      out.write("            padding: 10px;\n");
      out.write("            border: 2px solid #ccc;\n");
      out.write("            text-align: left;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-table td:first-child {\n");
      out.write("            font-weight: bold;\n");
      out.write("            width: 30%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-table input[type=\"text\"],\n");
      out.write("        .form-table select {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 8px;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            margin-top: 5px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-table input[type=\"submit\"] {\n");
      out.write("            background-color: palevioletred;\n");
      out.write("            color: #fff;\n");
      out.write("            border: none;\n");
      out.write("            padding: 10px 20px;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            transition: background-color 0.3s ease;\n");
      out.write("            margin-top: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-table input[type=\"submit\"]:hover {\n");
      out.write("            background-color: #d46a96;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("   ");

  String nm=(String)session.getAttribute("anm1");
  
      out.write("\n");
      out.write("    <!-- Start Main Top -->\n");
      out.write("    \n");
      out.write("    <!-- End Main Top -->\n");
      out.write("\n");
      out.write("    <!-- Start Main Top -->\n");
      out.write("    <header class=\"main-header\">\n");
      out.write("           <marquee><b><h1>");
      out.print(nm);
      out.write("</h1></b></marquee>\n");
      out.write("        <!-- Start Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <!-- Start Header Navigation -->\n");
      out.write("               \n");
      out.write("                <!-- End Header Navigation -->\n");
      out.write("\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                 <div class=\"collapse navbar-collapse\" id=\"navbar-menu\">\n");
      out.write("                    <ul class=\"nav navbar-nav ml-auto\" data-in=\"fadeInDown\" data-out=\"fadeOutUp\">\n");
      out.write("                        <li class=\"nav-item active\"><a class=\"nav-link\" style=\"font-family: long;font-size: 17px\" href=\"adminhomepage.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" style=\"font-family: long;font-size: 17px\" href=\"addmakeupinfo.jsp\">AddMakeUpInfo</a></li>\n");
      out.write("                       \n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" style=\"font-family: long;font-size: 17px\" href=\"productinfo.jsp\">ProductInfo</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" style=\"font-family: long;font-size: 17px\" href=\"searchproductorder.jsp\">SearchOrder</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" style=\"font-family: long;font-size: 17px\" href=\"searchmakeupappoinment.jsp\">SearchAppoinment</a></li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" style=\"font-family: long;font-size: 17px\"  href=\"logout.jsp\">LogOut</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse -->\n");
      out.write("\n");
      out.write("                <!-- Start Atribute Navigation -->\n");
      out.write("                \n");
      out.write("                <!-- End Atribute Navigation -->\n");
      out.write("            </div>\n");
      out.write("            <!-- Start Side Menu -->\n");
      out.write("            \n");
      out.write("            <!-- End Side Menu -->\n");
      out.write("        </nav>\n");
      out.write("        <!-- End Navigation -->\n");
      out.write("    </header>\n");
      out.write("    <!-- End Main Top -->\n");
      out.write("\n");
      out.write("    <!-- Start Top Search -->\n");
      out.write("    <div class=\"top-search\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("                <span class=\"input-group-addon\"><i class=\"fa fa-search\"></i></span>\n");
      out.write("                <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\n");
      out.write("                <span class=\"input-group-addon close-search\"><i class=\"fa fa-times\"></i></span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- End Top Search -->\n");
      out.write("\n");
      out.write("    <!-- Start All Title Box -->\n");
      out.write("    <div class=\"all-title-box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                 \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- End All Title Box -->\n");
      out.write("\n");
      out.write("    <!-- Start About Page  -->\n");
      out.write("    <div class=\"about-box-main\" style=\"font-family: long;\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-6\">\n");
      out.write("                    <div class=\"banner-frame\"> <img class=\"img-fluid\" src=\"images/img89.jpg\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-6\">\n");
      out.write("                    <center>_______________<span style=\"font-size:500%;color:palevioletred;\">&hearts;</span>_______________</center>\n");
      out.write("                    <h2 class=\"noo-sh-title-top\" style=\"font-family: long;\"><center>Add <span>Makeup Information</center></span></h2>\n");
      out.write("                    <form>\n");
      out.write("                        <table border=\"2\" width=\"500px\" height=\"400px\" bgcolor=\"pink\">\n");
      out.write("                           \n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                int a=0;
                                Statement st=con.createStatement();
                                String str="select count(*) from add_makeup_info";
                                ResultSet rs=st.executeQuery(str);
                                if(rs.next())
                                {
                                a=rs.getInt(1);
                                a++;
                                }
                                
      out.write("\n");
      out.write("                               <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Serial No</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><input type=\"text\" name=\"txtsno\" value=\"");
      out.print(a);
      out.write("\"readonly=\"true\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                \n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Parler Name</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><input type=\"text\" name=\"txtpnm\" value=\"\"/></td>\n");
      out.write("                                </tr>    \n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Makeup Type</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><select name=\"drpmtype\">\n");
      out.write("                                            <option>Select</option>\n");
      out.write("                                            <option>HD Makeup</option>\n");
      out.write("                                            <option>3D Makeup</option>\n");
      out.write("                                            <option>Waterproof Makeup</option>\n");
      out.write("                                            <option>Matte Makeup</option>\n");
      out.write("                                            <option>Shimmery Makeup</option>\n");
      out.write("                                            <option>Mineral Makeup </option>\n");
      out.write("                                            <option>Natural Minimal Makeup</option> \n");
      out.write("                                        </select></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Package Name</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><input type=\"text\" name=\"txtpacnm\" value=\"\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                 <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Price</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><input type=\"text\" name=\"txtpri\" value=\"\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

                                String img=request.getParameter("upload");
                                File f=new File("images//"+img);
                                String img1="images//"+img;
                                
                                
      out.write("\n");
      out.write("                                 <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>ImagePath</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><input type=\"file\" name=\"upload\" value=\"\"/><input type=\"submit\" value=\"Browse\" name=\"Browse\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td align=\"center\"><b>Image</b></td>\n");
      out.write("                                    <td><img src=\"");
      out.print(img1);
      out.write("\" width=\"100px\" height=\"100px\"/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

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
                                
                                
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Admin Name</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\">");
      out.print(anm);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Mobile No</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\">");
      out.print(mob);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><b>Description</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"><input type=\"text\" name=\"txtde\" value=\"\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                \n");
      out.write("                             <td  width=\"25px\" align=\"center\"colspan=\"2\"><input type=\"submit\" value=\"Submit\" name=\"Submit\" style=\"background-color: palevioletred\" />\n");
      out.write("                                   \n");
      out.write("                             \n");
      out.write("                               \n");
      out.write("                               \n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");

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


      out.write("\n");
      out.write("                    </form>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row my-5\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"row my-4\" style=\"font-family: long;\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <h2 class=\"noo-sh-title\" style=\"font-family: long;\"><center>Meet Our Team</center></h2>\n");
      out.write("                     <center>_______________<span style=\"font-size:500%;color:orange;\">&hearts;</span>_______________</center>\n");
      out.write("\n");
      out.write("                </div></br></br>\n");
      out.write("                <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("                    <div class=\"hover-team\">\n");
      out.write("                        <div class=\"our-team\"> <img src=\"images/img73.jpg\" alt=\"\" />\n");
      out.write("                            <div class=\"team-content\">\n");
      out.write("                                <h3 class=\"title\">Billy Manik</h3> <span class=\"post\">Bollywood Makeup Artist</span> </div>\n");
      out.write("                            <ul class=\"social\">\n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"team-description\">\n");
      out.write("                            <p >Hailing from Mumbai, Billy spoke to CMU about creating a name for herself in Bollywood, becoming a well-renowned celebrity makeup artist working on a variety of shoots from films to magazines and working with leading Indian actresses like Madhuri Dixit, Tamannaah Bhatia, Alia Bhatt, Yami Gautam </p>\n");
      out.write("                        </div>\n");
      out.write("                        <hr class=\"my-0\"> </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("                    <div class=\"hover-team\">\n");
      out.write("                        <div class=\"our-team\"> <img src=\"images/img77.jpg\" alt=\"\" />\n");
      out.write("                            <div class=\"team-content\">\n");
      out.write("                                <h3 class=\"title\" style=\"font-family: long;\">Trupti Rane</h3> <span class=\"post\">Makeup Artist</span> </div>\n");
      out.write("                            <ul class=\"social\">\n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"team-description\">\n");
      out.write("                            <p>Trupti Rane, Pro Makeup Artist & Hairstylist, is a freelance makeup artist based in Bangalore. You can rely on her skills to turn you into a perfect bride for all your wedding ceremonies, from mehndi to reception. She understands that everyone has a vision of how she wishes to look on her big day. </p>\n");
      out.write("                        </div>\n");
      out.write("                        <hr class=\"my-0\"> </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("                    <div class=\"hover-team\">\n");
      out.write("                        <div class=\"our-team\"> <img src=\"images/img91.jpg\" alt=\"\" />\n");
      out.write("                            <div class=\"team-content\">\n");
      out.write("                                <h3 class=\"title\">Vaishnavi Reke</h3> <span class=\"post\">Makeup Artist</span> </div>\n");
      out.write("                            <ul class=\"social\">\n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"team-description\">\n");
      out.write("                            <p>I have over 5 years experience in the world of makeup and beauty and am passionate about making each and every client feel fabulous in their own skin. My true passion is makeup but over the years I have added numerous beauty treatments to my skill set which I feel further enhances my offering to all my clients. </p>\n");
      out.write("                        </div>\n");
      out.write("                        <hr class=\"my-0\"> </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("                    <div class=\"hover-team\">\n");
      out.write("                        <div class=\"our-team\"> <img src=\"images/img80.jpg\" alt=\"\" />\n");
      out.write("                            <div class=\"team-content\">\n");
      out.write("                                <h3 class=\"title\">Pratiksha Thorat</h3> <span class=\"post\">Professional Makeup Artist</span> </div>\n");
      out.write("                            <ul class=\"social\">\n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"team-description\">\n");
      out.write("                            <p>Pratiksha Thorat, Professional Makeup Artist & Hairstylist, is a freelance makeup artist . You can rely on her skills to turn you into a perfect bride for all your wedding ceremonies, from mehndi to reception. She understands that everyone has a vision of how she wishes to look on her big day. </p>\n");
      out.write("                        </div>\n");
      out.write("                        <hr class=\"my-0\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- End About Page -->\n");
      out.write("\n");
      out.write("    <!-- Start Instagram Feed  -->\n");
      out.write("    \n");
      out.write("    <!-- End Instagram Feed  -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Start Footer  -->\n");
      out.write("   \n");
      out.write("    <!-- End Footer  -->\n");
      out.write("\n");
      out.write("    <!-- Start copyright  -->\n");
      out.write("     <div class=\"footer-copyright\">\n");
      out.write("        <p class=\"footer-company\" style=\"font-family: long; font-size: 25px\"> Design    By  :Pallavii    Walke\n");
      out.write("           </p>\n");
      out.write("    </div>\n");
      out.write("    <!-- End copyright  -->\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <!-- ALL JS FILES -->\n");
      out.write("    <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <script src=\"js/popper.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- ALL PLUGINS -->\n");
      out.write("    <script src=\"js/jquery.superslides.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap-select.js\"></script>\n");
      out.write("    <script src=\"js/inewsticker.js\"></script>\n");
      out.write("    <script src=\"js/bootsnav.js.\"></script>\n");
      out.write("    <script src=\"js/images-loded.min.js\"></script>\n");
      out.write("    <script src=\"js/isotope.min.js\"></script>\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"js/baguetteBox.min.js\"></script>\n");
      out.write("    <script src=\"js/form-validator.min.js\"></script>\n");
      out.write("    <script src=\"js/contact-form-script.js\"></script>\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
