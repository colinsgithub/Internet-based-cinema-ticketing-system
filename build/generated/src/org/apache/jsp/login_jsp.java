package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" ng-app=\"login\">\n");
      out.write("    <head>\n");
      out.write("        <title>About</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <link rel=\"icon\" href=\"img/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <meta name=\"description\" content=\"Your description\">\n");
      out.write("        <meta name=\"keywords\" content=\"Your keywords\">\n");
      out.write("        <meta name=\"author\" content=\"Your name\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/touchTouch.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/kwicks-slider.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/superfish.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.flexslider-min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.kwicks-1.5.1.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\t  \n");
      out.write("        <script type=\"text/javascript\" src=\"js/touchTouch.jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">if ($(window).width() > 1024) {\n");
      out.write("                document.write(\"<\" + \"script src='js/jquery.preloader.js'></\" + \"script>\");\n");
      out.write("            }</script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            jQuery(window).load(function() {\n");
      out.write("                $x = $(window).width();\n");
      out.write("                if ($x > 1024)\n");
      out.write("                {\n");
      out.write("                    jQuery(\"#content .row\").preloader();\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                jQuery('.magnifier').touchTouch();\n");
      out.write("                jQuery('.spinner').animate({'opacity': 0}, 1000, 'easeOutCubic', function() {\n");
      out.write("                    jQuery(this).css('display', 'none')\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <!--[if lt IE 8]>\n");
      out.write("                <div style='text-align:center'><a href=\"http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode\"><img src=\"http://www.theie6countdown.com/img/upgrade.jpg\"border=\"0\"alt=\"\"/></a></div>  \n");
      out.write("        <![endif]-->\n");
      out.write("        <!--[if (gt IE 9)|!(IE)]><!-->\n");
      out.write("        <!--<![endif]-->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("    <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/ie.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>\n");
      out.write("  <![endif]-->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"spinner\"></div> \n");
      out.write("        <!--============================== header =================================-->\n");
      out.write("        <header>\n");
      out.write("            <div class=\"container clearfix\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"span12\">\n");
      out.write("                        <div class=\"navbar navbar_\">\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <h1 class=\"brand brand_\"><a href=\"index.html\"><img alt=\"\" src=\"\"><span class=\"logo\">c</span></a></h1>\n");
      out.write("                                <a class=\"btn btn-navbar btn-navbar_\" data-toggle=\"collapse\" data-target=\".nav-collapse_\">Menu <span class=\"icon-bar\"></span> </a>\n");
      out.write("                                <div class=\"nav-collapse nav-collapse_  collapse\">\n");
      out.write("                                    <ul class=\"nav sf-menu\">\n");
      out.write("                                        <li class=\"active\"><a href=\"index.html\">Login</a></li>\n");
      out.write("                                        <li class=\"sub-menu\"><a href=\"index-1.html\">Registeration</a>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"#\">Dolore </a></li>\n");
      out.write("                                                <li><a href=\"#\">Consecte</a></li>\n");
      out.write("                                                <li><a href=\"#\">Conseq</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"index-2.html\">Folio</a></li>\n");
      out.write("                                        <li><a href=\"index-3.html\">Blog</a></li>\n");
      out.write("                                        <li><a href=\"index-4.html\">Contact</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"bg-content\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <!--                    <h1>Hello World!</h1>\n");
      out.write("                            <div ng-controller=\"loginController\">\n");
      out.write("                                <h1>{{hello}}</h1>\n");
      out.write("                            </div>-->\n");
      out.write("                    <div class=\"span12\"> \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <h3>Login</h3>\n");
      out.write("                            <div class=\"inner-1\">\n");
      out.write("                                <form id=\"contact-form\">\n");
      out.write("                                    <div class=\"success\"> Contact form submitted! <strong>We will be in touch soon.</strong> </div>\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <div>\n");
      out.write("                                            <label class=\"name\">\n");
      out.write("                                                <input type=\"text\" value=\"Your name\">\n");
      out.write("                                                <br>\n");
      out.write("                                                <span class=\"error\">*This is not a valid name.</span> <span class=\"empty\">*This field is required.</span> </label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div>\n");
      out.write("                                            <label class=\"phone\">\n");
      out.write("                                                <input type=\"tel\" value=\"Telephone\">\n");
      out.write("                                                <br>\n");
      out.write("                                                <span class=\"error\">*This is not a valid phone number.</span> <span class=\"empty\">*This field is required.</span> </label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div>\n");
      out.write("                                            <label class=\"email\">\n");
      out.write("                                                <input type=\"email\" value=\"Email\">\n");
      out.write("                                                <br>\n");
      out.write("                                                <span class=\"error\">*This is not a valid email address.</span> <span class=\"empty\">*This field is required.</span> </label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"buttons-wrapper\"> <a class=\"btn btn-1\" data-type=\"reset\">Clear</a> <a class=\"btn btn-1\" data-type=\"submit\">Send</a></div>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <span id=\"responsiveFlag\"></span>\n");
      out.write("                        <div class=\"block-slogan\">\n");
      out.write("<!--                            <h2>Welcome!</h2>\n");
      out.write("                            <div>\n");
      out.write("                                <p><a href=\"http://blog.templatemonster.com/free-website-templates/ \" target=\"_blank\" class=\"link-1\">Click here</a></p>\n");
      out.write("                            </div>-->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--============================== footer =================================-->\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container clearfix\">\n");
      out.write("                <ul class=\"list-social pull-right\">\n");
      out.write("                    <li><a class=\"icon-1\" href=\"#\"></a></li>\n");
      out.write("                    <li><a class=\"icon-2\" href=\"#\"></a></li>\n");
      out.write("                    <li><a class=\"icon-3\" href=\"#\"></a></li>\n");
      out.write("                    <li><a class=\"icon-4\" href=\"#\"></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"js/angular.min.js\" type=\"text/javascript\"></script>  \n");
      out.write("        <script>\n");
      out.write("            var loginController = angular.module('login', []);\n");
      out.write("\n");
      out.write("            loginController.controller('loginController', ['$scope', '$http',\n");
      out.write("                function($scope, $http) {\n");
      out.write("                    $scope.hello = \"POON KA HO\";\n");
      out.write("                }]);\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
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
