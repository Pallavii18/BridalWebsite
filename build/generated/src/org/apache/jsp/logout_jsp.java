package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("        .logout-box {\n");
      out.write("            text-align: center;\n");
      out.write("            background-color: #fff;\n");
      out.write("            padding: 40px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .logout-box img {\n");
      out.write("            width: 1000px;\n");
      out.write("            height: 700px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .logout-link {\n");
      out.write("            background-color: lightskyblue;\n");
      out.write("            font-size: 30px;\n");
      out.write("            padding: 15px 30px;\n");
      out.write("            text-decoration: none;\n");
      out.write("            color: #fff;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            transition: background-color 0.3s ease;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .logout-link:hover {\n");
      out.write("            background-color: #5cace4;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><img src=\"images/logout1.jpeg\" width=\"1000\" height=\"700\" alt=\"logout1\"/> <a  style=\"background-color: lightskyblue;font-size: 30px\"href=\"mainhomepage.jsp\">Logout</a></center>\n");
      out.write("  \n");
      out.write(" </body>\n");
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
