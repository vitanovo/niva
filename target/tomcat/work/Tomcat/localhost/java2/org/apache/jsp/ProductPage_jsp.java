/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.37
 * Generated at: 2015-11-04 07:22:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public final class ProductPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "ShoppingCart.jsp", out, false);
      out.write("\r\n");
      out.write("    <title>ProductPage</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

  String connectionURL = "jdbc:mysql://localhost:3306/niva_testdb";

  Connection connection = null;
  Statement statement = null;
  ResultSet rs = null;
  Class.forName("com.mysql.jdbc.Driver").newInstance();

  connection = DriverManager.getConnection(connectionURL, "root", "root");
  statement = connection.createStatement();
  String  querystring = "select * from goods";
  rs = statement.executeQuery(querystring);

      out.write("\r\n");
      out.write("<form name>\r\n");
      out.write("  <h2>Product List : </h2>\r\n");
      out.write("<table cellpadding=\"15\" border=\"1\" cellspacing=\"15\">\r\n");
      out.write("\r\n");
 try {
  while (rs.next()) {
   
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>");
      out.print(rs.getInt(1));
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(rs.getString(2));
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(rs.getString(3));
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(rs.getString(4));
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(rs.getString(5));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");
 } 
      out.write("\r\n");
      out.write("  ");
 } finally {
rs.close();
statement.close();
connection.close();
}
  
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<h1>");
      out.print(request.getAttribute("model"));
      out.write("</h1>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
