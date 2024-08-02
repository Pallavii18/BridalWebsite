package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class searchproductorder_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("      ");

  String nm=(String)session.getAttribute("anm1");
  
    
  
      out.write("\n");
      out.write("    <!-- Start Main Top -->\n");
      out.write("    \n");
      out.write("    <!-- End Main Top -->\n");
      out.write("\n");
      out.write("    <!-- Start Main Top -->\n");
      out.write("    <header class=\"main-header\">\n");
      out.write("            <marquee><b><h1>");
      out.print(nm);
      out.write("</h1></b></marquee>\n");
      out.write("        <!-- Start Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <!-- Start Header Navigation -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbar-menu\" aria-controls=\"navbars-rs-food\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <i class=\"fa fa-bars\"></i>\n");
      out.write("                </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/lo.png\" class=\"logo\" alt=\"\"></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- End Header Navigation -->\n");
      out.write("\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("               <div class=\"collapse navbar-collapse\" id=\"navbar-menu\" style=\"font-family: long;font-size: 17px\">\n");
      out.write("                    <ul class=\"nav navbar-nav ml-auto\" data-in=\"fadeInDown\" data-out=\"fadeOutUp\">\n");
      out.write("                        <li class=\"nav-item active\"><a class=\"nav-link\"  href=\"adminhomepage.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\"  href=\"addmakeupinfo.jsp\">AddMakeUpInfo</a></li>\n");
      out.write("                       \n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\"  href=\"productinfo.jsp\">ProductInfo</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"searchproductorder.jsp\">SearchOrder</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"searchmakeupappoinment.jsp\">SearchAppoinment</a></li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\"   href=\"logout.jsp\">LogOut</a></li>\n");
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
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- End All Title Box -->\n");
      out.write("\n");
      out.write("    <!-- Start About Page  -->\n");
      out.write("    <div class=\"about-box-main\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\t\t\t\t\n");
      out.write("                <div class=\"col-lg-6\">\n");
      out.write("                    \n");
      out.write("                     <center>_______________<span style=\"font-size:500%;color:lightgreen;\">&hearts;</span>_______________</center>\n");
      out.write("                     <h2 class=\"noo-sh-title-top\"><center>Search Product Order</center></h2></br></br>\n");
      out.write("                    <form>\n");
      out.write("                        <center><table border=\"2\" width=\"300px\" height=\"100px\" bgcolor=\"lightgreen\">\n");
      out.write("                           \n");
      out.write("                               ");

                                String anm1=null;
                                
                                
                                Statement st1=con.createStatement();
                                 String str1="select * from admin_registration where user_name='"+nm+"'";
                                   ResultSet rs1=st1.executeQuery(str1);
                                    while(rs1.next())
                                    {
                                        anm1=rs1.getString(1);
                                      
                                    }
                                       
                            
                                
                                
      out.write("  \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"colspan=\"7\"><b>Check Order Date</b></td>\n");
      out.write("                                    <td width=\"250px\" align=\"center\"colspan=\"7\"><input type=\"date\" name=\"txtcodate\" value=\"\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                               \n");
      out.write("                                <tr> \n");
      out.write("                                    <td  width=\"250px\" align=\"center\" colspan=\"14\"><h1><b><input type=\"submit\" value=\"Search\" name=\"Search\" style=\"background-color:green\" /></b></h1></td>\n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                </tr><td>OrderId</td> <td>orderDate</td><td>CustomerName</td><td>MobileNo</td><td>Address</td><td>PinCode</td><td>Id</td><td>ProductCategory</td><td>Product Name</td><td>Price</td><td>Quantity</td><td>AdminName</td><td>MobileNo</td></tr>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

                                int oid=0;
                                String odate=null;
                                String cnm=null;
                                String mob=null;
                                String add=null;
                                int pcode=0;
                                int id=0;
                                String pcatgry=null;
                                String pnm=null;
                              String pinfo=null;
                                int pr=0;
                                int qunty=0;
                                String anm=null;
                                String mob1=null;
                                
                                String codate = request.getParameter("txtcodate");
                                Statement st=con.createStatement();
                                if(codate!=null && codate!="" )
                             
                                    {
                    String str="select * from confirm_order where order_date ='"+codate+"' and admin_name='"+anm1+"'"; 
                     ResultSet rs=st.executeQuery(str);
                     while(rs.next())
                        {
                            oid=rs.getInt(1);
                            odate=rs.getString(2);
                            cnm=rs.getString(3);
                            mob=rs.getString(4);
                            add=rs.getString(5);
                            pcode=rs.getInt(6);
                            id=rs.getInt(7);
                            pcatgry=rs.getString(8);
                            pnm=rs.getString(9);
                         
                            pr=rs.getInt(10);
                             
                            qunty=rs.getInt(11);
                            anm=rs.getString(12);
                            mob1=rs.getString(13);
                            
                        }
                                    }
                            
                            
                        
                       
                                
      out.write("    \n");
      out.write("                                <tr><td>");
      out.print(oid);
      out.write("</td><td>");
      out.print(odate);
      out.write("</td><td>");
      out.print(cnm);
      out.write("</td><td>");
      out.print(mob);
      out.write("</td><td>");
      out.print(add);
      out.write("</td><td>");
      out.print(pcode);
      out.write("</td><td>");
      out.print(id);
      out.write("</td><td>");
      out.print(pcatgry);
      out.write("</td><td>");
      out.print(pnm);
      out.write("<td>");
      out.print(pr);
      out.write("</td><td>");
      out.print(qunty);
      out.write("</td><td>");
      out.print(anm);
      out.write("</td><td>");
      out.print(mob1);
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                \n");
      out.write("                            </tbody>\n");
      out.write("                            </table></center>\n");
      out.write("\n");
      out.write("                    </form></br>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row my-5\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"row my-4\">\n");
      out.write("                <\n");
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
      out.write("        <p class=\"footer-company\"> Design By :pallaviiwalke\n");
      out.write("           </p>\n");
      out.write("    </div>\n");
      out.write("    <!-- End copyright  -->\n");
      out.write("\n");
      out.write("  \n");
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
