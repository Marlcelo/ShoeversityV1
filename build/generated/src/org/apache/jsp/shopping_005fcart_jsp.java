package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.lang.Integer;
import java.util.ArrayList;

public final class shopping_005fcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Welcome to Shoeversity!</title>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"STYLES/main.css\">\r\n");
      out.write("        \r\n");
      out.write("        <!--BOOTSTRAP snippet of code credit https://bootsnipp.com/snippets/Ekpjl -->\r\n");
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
      out.write("       \r\n");
      out.write("\t<!--Set active_page session variable-->\r\n");
      out.write("\t");
 session.setAttribute("page", "products"); 
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
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

		//tring active_page = session.getAttribute("page").toString();
		//pageContext.setAttribute("highlight", active_page);
	
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
      out.write(" \r\n");
      out.write("        ");

          
          
          out.println(session.getAttribute("cart"));
          
          ArrayList<Integer> cart;
          cart = (ArrayList<Integer>)session.getAttribute("cart");
          
          out.println(cart.get(0));
          float subtotal = 0;
          for(int i = 0; i < cart.size(); i++){
              int shoe_id = cart.get(i);
              int qty = cart.get(i+=1);
              
              
              StringBuilder sb = new StringBuilder();
              
              try{
                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;
                        
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
                        stmnt = conn.createStatement();
                        
                        String sql = "SELECT * FROM shoes WHERE uid = "+shoe_id;
                        
                        rs = stmnt.executeQuery(sql);
                        
                        
                        rs.next();
              
          
          
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-sm-12 col-md-10 col-md-offset-1\">\r\n");
      out.write("                    <table class=\"table table-hover\">\r\n");
      out.write("                        <thead>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Product</th>\r\n");
      out.write("                                <th>Quantity</th>\r\n");
      out.write("                                <th class=\"text-center\">Price</th>\r\n");
      out.write("                                <th class=\"text-center\">Total</th>\r\n");
      out.write("                                <th> </th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td class=\"col-sm-8 col-md-6\">\r\n");
      out.write("                                    <div class=\"media\">\r\n");
      out.write("                                        <a class=\"thumbnail pull-left\" href=\"#\"><img class=\"media-object\" src=\"http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png\" style=\"width: 72px; height: 72px;\"> </a>\r\n");
      out.write("                                        <div class=\"media-body\">\r\n");
      out.write("                                            <h4 class=\"media-heading\" style=\"padding-left: 10px;\"><a href=\"#\"> ");
      out.print( rs.getString("name")  );
      out.write("</a></h4>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td class=\"col-sm-1 col-md-1\" style=\"text-align: center\">\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control text-center\" value=\"1\">\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td class=\"col-sm-1 col-md-1 text-center\"><strong>P");
      out.print( rs.getString("price")  );
      out.write("</strong></td>\r\n");
      out.write("                                ");

                                    double price = Double.parseDouble(rs.getString("price"));
                                    
                                    double total = price * qty;
                                    
                                    subtotal+=total;
                                
      out.write("\r\n");
      out.write("                                <td class=\"col-sm-1 col-md-1 text-center\"><strong>");
      out.print( total  );
      out.write("</strong></td>\r\n");
      out.write("                                <td class=\"col-sm-1 col-md-1\">\r\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger\">\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-remove\"></span> Remove\r\n");
      out.write("                                </button></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            \r\n");
      out.write("                            ");

                            }catch (Exception e){
                        e.printStackTrace();
                    };
}
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td><h5>Subtotal</h5></td>\r\n");
      out.write("                                <td class=\"text-right\"><h5><strong>$24.59</strong></h5></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td><h5>Estimated shipping</h5></td>\r\n");
      out.write("                                <td class=\"text-right\"><h5><strong>$6.94</strong></h5></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>   </td> <!--Leave these blank-->\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td><h3>Total</h3></td>\r\n");
      out.write("                                <td class=\"text-right\"><h3><strong>$31.53</strong></h3></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>   </td> <!--Leave these blank-->\r\n");
      out.write("                                <td>   </td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                <button type=\"button\" class=\"btn btn-default\">\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-shopping-cart\"></span> Continue Shopping\r\n");
      out.write("                                </button></td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success\">\r\n");
      out.write("                                    Checkout <span class=\"glyphicon glyphicon-play\"></span>\r\n");
      out.write("                                </button></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <!--Footer-->\r\n");
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
