package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.Province;
import Controller.DBDataList;
import java.util.ArrayList;
import Model.District;
import Model.User;

public final class registerSchool_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("This is a starter template page. Use this page to start your new project from\n");
      out.write("scratch. This page gets rid of all links and provides the needed markup only.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>G1-EQES</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/favicon.png\">\n");
      out.write("        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>\n");
      out.write("        <!-- Bootstrap 3.3.4 -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- Font Awesome Icons -->\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- Ionicons -->\n");
      out.write("        <link href=\"https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- DATA TABLES -->\n");
      out.write("        <link href=\"plugins/datatables/dataTables.bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- Theme style -->\n");
      out.write("        <link href=\"dist/css/AdminLTE.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter\n");
      out.write("           page. However, you can choose any other skin. Make sure you\n");
      out.write("           apply the skin class to the body tag so the changes take effect.\n");
      out.write("        -->\n");
      out.write("        <link href=\"dist/css/skins/_all-skins.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("        <link href=\"css/portBox.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"css/hover.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"skin-purple layout-top-nav\">\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Main Header -->\n");
      out.write("<header class=\"main-header\">\n");
      out.write("\n");
      out.write("    <!-- Header Navbar: style can be found in header.less -->\n");
      out.write("    <nav class=\"navbar navbar-static-top\" role=\"navigation\">\n");
      out.write("        <ul class=\"nav navbar-nav\">\n");
      out.write("            <li class=\"dropdown messages-menu\">\n");
      out.write("                <img class=\"center-block img-responsive\" src=\"img/logo.png\" style=\"height: 50px;\"/>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("        <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("        <div class=\"collapse navbar-collapse pull-left\" id=\"navbar-collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("                <li class=\"active\"><a href=\"home.jsp\"><i class=\"fa fa-home\"></i> Home</a></li>\n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-list-alt\"></i> Application <span class=\"caret\"></span></a>\n");
      out.write("                    <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                        <li><a href=\"registerApplication.jsp\">Submit an application</a></li>\n");
      out.write("                        <li><a href=\"#\">View submitted applications</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-graduation-cap\"></i> School <span class=\"caret\"></span></a>\n");
      out.write("                    <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                        <li><a href=\"viewSchool.jsp\">View list of schools</a></li>\n");
      out.write("                        <li><a href=\"registerSchool.jsp\">Register a new school</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li><a href=\"viewUser.jsp\"><i class=\"fa fa-users\"></i> Users</a></li>\n");
      out.write("                <li><a href=\"adminPanel.jsp\"><i class=\"fa fa-cog\"></i> Admin Panel</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Navbar Right Menu -->\n");
      out.write("        <div class=\"navbar-custom-menu\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("                ");

                    User u = (User) session.getAttribute("user");
                
      out.write("\n");
      out.write("                <!-- User Account Menu -->\n");
      out.write("                <li class=\"dropdown user user-menu\">\n");
      out.write("                    <!-- Menu Toggle Button -->\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                        <!-- The user image in the navbar-->\n");
      out.write("                        ");
 if (u.getUserLevel().equals("Admin")) {
      out.write("\n");
      out.write("                        <img src=\"dist/img/avatar5.png\" class=\"user-image\" alt=\"User Image\"/>\n");
      out.write("                        ");
 } else { 
      out.write("\n");
      out.write("                        <img src=\"img/user.png\" class=\"user-image\" alt=\"User Image\"/>\n");
      out.write("                        ");
 }
      out.write("\n");
      out.write("                        <!-- hidden-xs hides the username on small devices so only the image appears. -->\n");
      out.write("                        <span class=\"hidden-xs\">\n");
      out.write("                            ");
      out.print( u.getFname() + " " + u.getLname());
      out.write("\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <!-- The user image in the menu -->\n");
      out.write("                        <li class=\"user-header\" style=\"height: 180px;\">\n");
      out.write("                            ");
 if (u.getUserLevel().equals("Admin")) {
      out.write("\n");
      out.write("                            <img src=\"dist/img/avatar5.png\" class=\"img-circle\" alt=\"User Image\" />\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                            <img src=\"img/user.png\" class=\"img-circle\" alt=\"User Image\" />\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                            <p>\n");
      out.write("                                ");
      out.print( u.getFname() + " " + u.getLname());
      out.write("<br/>\n");
      out.write("                                ");
      out.print( u.getUserLevel());
      out.write("\n");
      out.write("                                <small>");
      out.print( u.getAddress());
      out.write("</small>\n");
      out.write("                            </p>\n");
      out.write("                        </li>\n");
      out.write("                        <!-- Menu Footer-->\n");
      out.write("                        <li class=\"user-footer\">\n");
      out.write("                            <div class=\"pull-left\">\n");
      out.write("                                <a href=\"viewProfile.jsp\" class=\"btn btn-default btn-flat\">Profile</a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"pull-right\">\n");
      out.write("                                <a href=\"signOut\" class=\"btn btn-default btn-flat\">Sign out</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</header>");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Content Wrapper. Contains page content -->\n");
      out.write("            <div class=\"content-wrapper\">\n");
      out.write("                <!-- Content Header (Page header) -->\n");
      out.write("                <section class=\"content-header\">\n");
      out.write("                    <h1>\n");
      out.write("                        SCHOOLS<small>Register School</small>\n");
      out.write("                    </h1>\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li><a href=\"home.jsp\"><i class=\"fa fa-dashboard\"></i> G1EQES</a></li>\n");
      out.write("                        <li class=\"active\">Home</li>\n");
      out.write("                    </ol>\n");
      out.write("                </section>\n");
      out.write("\n");
      out.write("                <hr>\n");
      out.write("\n");
      out.write("                <!-- Main content -->\n");
      out.write("                ");

                    User usr = (User) session.getAttribute("user");
                    if (usr.getUserLevel().equals("Admin")) {
                
      out.write("\n");
      out.write("\n");
      out.write("                <section class=\"content\">\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("\n");
      out.write("                            ");

                                if (request.getParameter("msg") != null) {
                                    if (request.getParameter("msg").equals("success")) {
                            
      out.write("\n");
      out.write("                            <div class=\"pad margin no-print\">\n");
      out.write("                                <div class=\"callout callout-success\" style=\"margin-bottom: 0!important;\">\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                    <h4><i class=\"fa fa-check\"></i> Success</h4>\n");
      out.write("                                    New school successfully saved.\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            ");

                            } else if (request.getParameter("msg").equals("error")) {
                            
      out.write("\n");
      out.write("                            <div class=\"pad margin no-print\">\n");
      out.write("                                <div class=\"callout callout-danger\" style=\"margin-bottom: 0!important;\">\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                    <h4><i class=\"fa fa-warning\"></i> Warning:</h4>\n");
      out.write("                                    An error occurred when saving new school. Please try again.\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            ");

                                    }
                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"box box-info\">\n");
      out.write("                                <!-- form start -->\n");
      out.write("                                <form class=\"form-horizontal\" action=\"saveSchool\" method=\"POST\">\n");
      out.write("\n");
      out.write("                                    <div class=\"box-body\">\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"col-sm-3 control-label \">Category :</label>\n");
      out.write("                                            <div class=\"col-sm-3\">\n");
      out.write("                                                <select name=\"category\" id=\"category\" class=\"form-control\" required=\"\">\n");
      out.write("                                                    <option value=\"select\" selected disabled>Select Category</option>\n");
      out.write("                                                    <option value=\"National\">National</option>\n");
      out.write("                                                    <option value=\"Provincial\">Provincial</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"col-sm-3 control-label\">School Name :</label>\n");
      out.write("                                            <div class=\"col-sm-9\">\n");
      out.write("                                                <input name=\"name\" id=\"name\" class=\"form-control\" required=\"\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"col-sm-3 control-label\">Address :</label>\n");
      out.write("                                            <div class=\"col-sm-9\">\n");
      out.write("                                                <input name=\"address\" id=\"address\" class=\"form-control\" required=\"\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"col-sm-3 control-label\">Province :</label>\n");
      out.write("                                            <div class=\"col-sm-3\">\n");
      out.write("                                                <select name=\"province\" id=\"province\" class=\"form-control\" required=\"\">\n");
      out.write("                                                    <option value=\"select\" selected=\"\" disabled=\"\">Select Province</option>\n");
      out.write("                                                    ");

                                                        ArrayList<Province> arrPrv = DBDataList.getProvinceList();
                                                        if (arrPrv != null) {
                                                            for (int i = 0; i < arrPrv.size(); i++) {
                                                                Province province = (Province) arrPrv.get(i);
                                                    
      out.write("                        \n");
      out.write("                                                    <option value=\"");
      out.print(province.getName());
      out.write('"');
      out.write('>');
      out.print( province.getName());
      out.write("</option>                        \n");
      out.write("                                                    ");

                                                            }
                                                        }
                                                    
      out.write("\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                            <label class=\"col-sm-3 control-label\">District :</label>\n");
      out.write("                                            <div class=\"col-sm-3\">\n");
      out.write("                                                <select name=\"district\" id=\"district\" class=\"form-control\" required=\"\">\n");
      out.write("                                                    <option value=\"select\" selected=\"\" disabled=\"\">Select District</option>\n");
      out.write("                                                    ");

                                                        ArrayList<District> arrDis = DBDataList.getDistrictList();
                                                        if (arrDis != null) {
                                                            for (int i = 0; i < arrDis.size(); i++) {
                                                                District district = (District) arrDis.get(i);
                                                    
      out.write("                        \n");
      out.write("                                                    <option value=\"");
      out.print(district.getName());
      out.write('"');
      out.write('>');
      out.print( district.getName());
      out.write("</option>                        \n");
      out.write("                                                    ");

                                                            }
                                                        }
                                                    
      out.write("\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"col-sm-3 control-label\">Contact No :</label>\n");
      out.write("                                            <div class=\"col-sm-3\">\n");
      out.write("                                                <input name=\"contact\" id=\"contact\" class=\"form-control\" maxlength=\"10\" required=\"\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"box-footer\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-primary pull-right\">Register</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div><!-- /.box -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </section><!-- /.content -->\n");
      out.write("\n");
      out.write("                ");

                } else {
                
      out.write("\n");
      out.write("                <div class=\"pad margin no-print\">\n");
      out.write("                    <div class=\"callout callout-danger\" style=\"margin-bottom: 0!important;\">\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                        <h4><i class=\"fa fa-warning\"></i> Warning</h4>\n");
      out.write("                        You don't have privileges to access this page.\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("            </div><!-- /.content-wrapper -->\n");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Main Footer -->\n");
      out.write("<footer class=\"main-footer\">\n");
      out.write("    <!-- To the right -->\n");
      out.write("    <div class=\"pull-right hidden-xs\">\n");
      out.write("        Powered by: <strong>eBOX - <i>We Believe Innovation</i></strong>\n");
      out.write("    </div>\n");
      out.write("    <!-- Default to the left -->\n");
      out.write("    <strong>Copyright &copy; 2015.</strong> All rights reserved.\n");
      out.write("</footer>");
      out.write("\n");
      out.write("\n");
      out.write("        </div><!-- ./wrapper -->\n");
      out.write("\n");
      out.write("        <!-- REQUIRED JS SCRIPTS -->\n");
      out.write("\n");
      out.write("        <!-- jQuery 2.1.4 -->\n");
      out.write("        <script src=\"plugins/jQuery/jQuery-2.1.4.min.js\"></script>\n");
      out.write("        <script src=\"plugins/jQueryUI/jquery-ui.js\"></script>\n");
      out.write("        <!-- Bootstrap 3.3.2 JS -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- DATA TABES SCRIPT -->\n");
      out.write("        <script src=\"plugins/datatables/jquery.dataTables.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"plugins/datatables/dataTables.bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- AdminLTE App -->\n");
      out.write("        <script src=\"dist/js/app.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"dist/js/demo.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("        <!-- Optionally, you can add Slimscroll and FastClick plugins.\n");
      out.write("           Both of these plugins are recommended to enhance the\n");
      out.write("           user experience. Slimscroll is required when using the\n");
      out.write("           fixed layout. -->\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"plugins/jQueryUI/jquery-ui.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-ui-1.10.3.custom.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/portBox.slimscroll.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/validation.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
