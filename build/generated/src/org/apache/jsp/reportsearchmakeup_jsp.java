package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class reportsearchmakeup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" <script language=\"javascript\">\n");
      out.write("        function editRecord(id)\n");
      out.write("        {\n");
      out.write("            var f = document.form;\n");
      out.write("            f.method=\"post\";\n");
      out.write("            f.action='bookappoinment.jsp?id=' +id;\n");
      out.write("            f.submit();\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("     ");

        String nm=(String)session.getAttribute("unm1");
    
      out.write("\n");
      out.write("    <!-- Start Main Top -->\n");
      out.write("    \n");
      out.write("    <!-- End Main Top -->\n");
      out.write("\n");
      out.write("    <!-- Start Main Top -->\n");
      out.write("    <header class=\"main-header\">\n");
      out.write("         <marquee><b><h1>");
      out.print(nm);
      out.write("</h1></b></marquee>\n");
      out.write("        <!-- Start Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <!-- Start Header Navigation -->\n");
      out.write("                \n");
      out.write("                <!-- End Header Navigation -->\n");
      out.write("\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("               <div class=\"collapse navbar-collapse\" id=\"navbar-menu\"  style=\"font-family: long\">\n");
      out.write("                    <ul class=\"nav navbar-nav ml-auto\" data-in=\"fadeInDown\" data-out=\"fadeOutUp\">\n");
      out.write("                        <li class=\"nav-item active\"><a class=\"nav-link\" href=\"clienthomepage.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"orderproduct.jsp\">OrderProduct</a></li>\n");
      out.write("                           <li class=\"nav-item\"><a class=\"nav-link\" href=\"bookappoinment.jsp\">BookAppoinment</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"searchmakeup.jsp\">SearchMakeUp</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"searchproduct.jsp\">SearchProduct</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">LogOut</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse -->\n");
      out.write("\n");
      out.write("                <!-- Start Atribute Navigation -->\n");
      out.write("               \n");
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
      out.write("    \n");
      out.write("    <!-- End Top Search -->\n");
      out.write("\n");
      out.write("    <!-- Start All Title Box -->\n");
      out.write("    <div class=\"all-title-box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div></br>\n");
      out.write("    <!-- End All Title Box -->\n");
      out.write("\n");
      out.write("    <!-- Start About Page  -->\n");
      out.write("\n");
      out.write("<div class=\"about-box-main\" style=\"font-family: long\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\t\t\t\t\n");
      out.write("                <div class=\"col-lg-6\">\n");
      out.write("                    </br></br>\n");
      out.write("                      <center>_______________<span style=\"font-size:500%;color:cadetblue;\">&hearts;</span>_______________</center>\n");
      out.write("                    <h2 class=\"noo-sh-title-top\"><center>Search Makeup</center></h2>\n");
      out.write("                    <form method=\"post\" name=\"form\">\n");
      out.write("                        <center><table border=\"2\" width=\"50px\" height=\"50px\">\n");
      out.write("                           \n");
      out.write("                            <tbody>\n");
      out.write("                                \n");
      out.write("                                <tr> \n");
      out.write("                                  \n");
      out.write("                                    \n");
      out.write("                                </tr>                                                     \n");
      out.write("                                 <tr>\n");
      out.write("                                   <tr><td>SerialNo</td><td>ParlerName</td><td>MakeUpType</td><td>PackageName</td><td>Price</td><td>Image</td><td>AdminName</td><td>MobileNo</td><td>Description</td></tr>\n");
      out.write("                                </tr>\n");
      out.write("                   ");

                   int sno=0;
                   String pnm=null;
                   String mtype=null;
                   String pacnm=null;
                   int pr=0;
                   String img=null;
                   String anm=null;
                   String mob=null;
                   String des=null;
                   
                         String img1=null;
                                Statement st=con.createStatement();
                                {
                                    String str="select * from add_makeup_info";
                                     ResultSet rs=st.executeQuery(str);
                                        while(rs.next())
                                         {
                                             sno=rs.getInt(1);
                                             pnm=rs.getString(2);
                                             mtype=rs.getString(3);
                                             pacnm=rs.getString(4);
                                             pr=rs.getInt(5);
                                             img=rs.getString(6);
                                             img1="images//"+img;
                                             anm=rs.getString(7);
                                             mob=rs.getString(8);
                                             des=rs.getString(9);
                            
                                    
      out.write("\n");
      out.write("                                    <tr><td>");
      out.print(sno);
      out.write("</td><td>");
      out.print(pnm);
      out.write("</td><td>");
      out.print(mtype);
      out.write("</td><td>");
      out.print(pacnm);
      out.write("</td><td>");
      out.print(pr);
      out.write("</td><td><img src=\" ");
      out.print(img1);
      out.write("\" width=\"120\" height=\"120\"/>\n");
      out.write("                                        </td><td>");
      out.print(anm);
      out.write("</td><td>");
      out.print(mob);
      out.write("</td><td>");
      out.print(des);
      out.write("</td><td align=\"center\"><input type=\"button\"name=\"BookNow\" value=\"BookNow\"style=\"background-color: cornflowerblue;font-weight: bold;color: white;\"onclick=\"editRecord(");
      out.print(rs.getInt(1));
      out.write(")\"/></td></tr>\n");
      out.write("                                    ");
             }
                                }
      out.write("\n");
      out.write("                          </tbody>\n");
      out.write("                            </table></center>\n");
      out.write("                                \n");
      out.write("                    </form>\n");
      out.write("                 </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row my-5\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"row my-4\">\n");
      out.write("               \n");
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
      out.write("   <div class=\"footer-copyright\">\n");
      out.write("        <p class=\"footer-company\" style=\"font-family: long; font-size: 25px\"> Design    By  :Pallavii    Walke\n");
      out.write("           </p>\n");
      out.write("    </div>\n");
      out.write("    <!-- End copyright  -->\n");
      out.write("\n");
      out.write("    <a  id=\"back-to-top\" title=\"Back to top\" style=\"display: none;\">&uarr;</a>\n");
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
      out.write("\n");
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
