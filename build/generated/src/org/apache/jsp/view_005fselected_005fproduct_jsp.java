package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class view_005fselected_005fproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/STYLES/bootstrap-template.jsp");
    _jspx_dependants.add("/TEMPLATES/header.jsp");
    _jspx_dependants.add("/TEMPLATES/footer.jsp");
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

      out.write('\r');
      out.write('\n');

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Shoeversity</title>\r\n");
      out.write("        \r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"STYLES/view_product.css\">\r\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,700\" rel=\"stylesheet\">\r\n");
      out.write("        \r\n");
      out.write("        <!--BOOTSTRAP-->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        \r\n");
      out.write("        <!--Bootstrap CSS-->\r\n");
      out.write("        <link href=\"/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body>\r\n");
      out.write("        <!--Bootstrap JS--> \r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("        ");

            
        
        
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t");

		String active_page = session.getAttribute("page").toString();
		pageContext.setAttribute("highlight", active_page);
	
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body>\r\n");
      out.write("        <!--Header-->\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-inverse navbar-fixed-top\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<a class=\"navbar-brand\" href=\"#\"> <img class=\"img-circle\" src=\"IMAGES/sample_logo.png\" width=\"20px\"> </a>\r\n");
      out.write("\t\t\t\t<a class=\"navbar-brand\" href=\"#\">Shoeversity</a> \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<ul class=\"nav navbar-nav pull-right\">\r\n");
      out.write("\t\t\t\t<li class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageScope.highlight == 'products' ? ' active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"index.htm\">Products</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageScope.highlight == 'login' ? ' active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"login.jsp\">Login</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageScope.highlight == 'register' ? ' active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"register.jsp\">Register</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("     \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\t\t<div class=\"card\">\r\n");
      out.write("\t\t\t<div class=\"container-fliud\">\r\n");
      out.write("\t\t\t\t<div class=\"wrapper row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"preview col-md-6\">\r\n");
      out.write("                                            <img src=\"\"/>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"details col-md-6\">\r\n");
      out.write("\t\t\t\t\t\t<h3 class=\"product-title\">men's shoes fashion</h3>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"rating\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"stars\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"fa fa-star checked\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"fa fa-star checked\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"fa fa-star checked\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"fa fa-star\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"fa fa-star\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"review-no\">41 reviews</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<p class=\"product-description\">Suspendisse quos? Tempus cras iure temporibus? Eu laudantium cubilia sem sem! Repudiandae et! Massa senectus enim minim sociosqu delectus posuere.</p>\r\n");
      out.write("\t\t\t\t\t\t<h4 class=\"price\">Price: <span>$180</span></h4>\r\n");
      out.write("\t\t\t\t\t\t<p class=\"vote\"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>\r\n");
      out.write("\t\t\t\t\t\t<h5 class=\"sizes\">Size:\r\n");
      out.write("                                                    <span class=\"size\" data-toggle=\"tooltip\" >Small</span>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t<h5 class=\"colors\">Colors:\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"color green\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"color blue\"></span>\r\n");
      out.write("\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"action\">\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"add-to-cart btn btn-default\" type=\"button\">add to cart</button>\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"like btn btn-default\" type=\"button\"><span class=\"fa fa-star\"></span> Rate</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!--Footer-->\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t.myFooter {\r\n");
      out.write("\t\tborder-top: 1px solid #efefef;\r\n");
      out.write("\t\tbackground: #f0f0f0;\r\n");
      out.write("\t\theight: 82px;\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tmargin: 0 auto;\r\n");
      out.write("\t\tmargin-top: 70px;\r\n");
      out.write("\t\tpadding: 25px;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write(" <!--Footer-->\r\n");
      out.write(" <footer class=\"page-footer font-small blue pt-4 mt-4 myFooter\">\r\n");
      out.write("      \r\n");
      out.write("\t<!--Footer Links-->\r\n");
      out.write("\t<div class=\"container text-center text-md-left\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!--Copyright-->\r\n");
      out.write("\t\t\t<div class=\"footer-copyright py-3 text-center\">\r\n");
      out.write("\t\t\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t\t\t© 2018 \r\n");
      out.write("\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t<span class=\"text-info\">Lachica, Medina, Ricanor</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!--/.Copyright-->\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>\r\n");
      out.write("<!--/.Footer-->\r\n");
      out.write(" \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
