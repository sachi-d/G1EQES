<%-- 
    Document   : viewUser
    Created on : Dec 15, 2015, 11:33:25 AM
    Author     : Chanaka
--%>

<%@page import="Model.School"%>
<%@page import="Model.Principal"%>
<%@page import="Model.GramaNiladhari"%>
<%@page import="Model.Telephone"%>
<%@page import="Model.Parent"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.DBDataList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>G1-EQES</title>
        <link rel="shortcut icon" href="img/favicon.png">
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.4 -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- DATA TABLES -->
        <link href="plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect.
        -->
        <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="css/portBox.css" rel="stylesheet" type="text/css" />
        <link href="css/hover.css" rel="stylesheet" type="text/css" />
    </head>

    <body class="bg-navy layout-top-nav">
        <div class="wrapper">

            <%@include file="header.jsp" %>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        USERS<small>View User</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home.jsp"><i class="fa fa-dashboard"></i> G1EQES</a></li>
                        <li class="active">Home</li>
                    </ol>
                </section>

                <hr>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">

                            <%
                                if (request.getParameter("msg") != null) {
                                    if (request.getParameter("msg").equals("errorStatus")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    Oops! Something went wrong when changing status. Please try again.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("successStatus")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-success" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-check-circle"></i> Success</h4>
                                    Status saved successfully.
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                            <div class="row">
                                <div class="col-md-12">
                                    <!-- Custom Tabs -->
                                    <div class="nav-tabs-custom">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab_1" data-toggle="tab">Principal</a></li>
                                            <li><a href="#tab_2" data-toggle="tab">Grama Niladhari</a></li>
                                                <% if (u.getUserLevel().equals("Admin")) { %>
                                            <li><a href="#tab_3" data-toggle="tab">Parent</a></li>
                                            <li><a href="#tab_4" data-toggle="tab">Admin</a></li>
                                                <% } %>
                                            <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                                        </ul>
                                        <div class="tab-content" style="overflow-x: scroll">

                                            <% if (u.getUserLevel().equals("Admin")) { %>
                                            <div class="tab-pane" id="tab_3">
                                                <table id="table_parent" class="table table-bordered table-striped table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>NIC</th>
                                                            <th>Address</th>
                                                            <th>Mobile</th>
                                                            <th>Land Line</th>
                                                            <th>Email</th>
                                                            <th>Nationality</th>
                                                            <th>Religion</th>
                                                            <th>Province</th>
                                                            <th>District</th>
                                                            <th>Division Secretary</th>
                                                            <th>Grama Niladhari Division</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ArrayList<Parent> arrParent = DBDataList.getParentList();
                                                            if (arrParent != null) {
                                                                for (int i = 0; i < arrParent.size(); i++) {
                                                                    Parent parent = (Parent) arrParent.get(i);
                                                                    User user = parent.getUser();
                                                        %>
                                                        <tr>
                                                            <td><%= i + 1%></td>
                                                            <td><%= user.getFname()%></td>
                                                            <td><%= user.getLname()%></td>
                                                            <td><%= user.getNic()%></td>
                                                            <td><%= user.getAddress()%></td>
                                                            <td><%= user.getTelephone().getMobileNumber()%></td>
                                                            <td><%= user.getTelephone().getLandLine()%></td>
                                                            <td><%= user.getEmail()%></td>
                                                            <td><%= parent.getNationality()%></td>
                                                            <td><%= parent.getReligion()%></td>
                                                            <td><%= parent.getProvince()%></td>
                                                            <td><%= parent.getDistrict()%></td>
                                                            <td><%= parent.getDivisionSecretary()%></td>
                                                            <td><%= parent.getGramaDivision()%></td>
                                                        </tr>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div><!-- /.tab-pane -->
                                            <% } %>

                                            <div class="tab-pane" id="tab_2">
                                                <table id="table_gn" class="table table-bordered table-striped table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>NIC</th>
                                                            <th>Address</th>
                                                            <th>Mobile</th>
                                                            <th>Land Line</th>
                                                            <th>Email</th>
                                                            <th>Grade</th>
                                                            <th>Division</th>
                                                                <% if (u.getUserLevel().equals("Admin")) { %>
                                                            <th>Status</th>
                                                                <% } %>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ArrayList<GramaNiladhari> arrGrama = DBDataList.getGramaNiladhariList();
                                                            if (arrGrama != null) {
                                                                for (int i = 0; i < arrGrama.size(); i++) {
                                                                    GramaNiladhari grama = (GramaNiladhari) arrGrama.get(i);
                                                                    User user = grama.getUser();
                                                        %>
                                                        <tr>
                                                            <td><%= i + 1%></td>
                                                            <td><%= user.getFname()%></td>
                                                            <td><%= user.getLname()%></td>
                                                            <td><%= user.getNic()%></td>
                                                            <td><%= user.getAddress()%></td>
                                                            <td><%= user.getTelephone().getMobileNumber()%></td>
                                                            <td><%= user.getTelephone().getLandLine()%></td>
                                                            <td><%= user.getEmail()%></td>
                                                            <td><%= grama.getGrade()%></td>
                                                            <td><%= grama.getDivision()%></td>
                                                            <%
                                                                if (u.getUserLevel().equals("Admin")) {
                                                                    if (user.getFlag() == 1) {
                                                            %>
                                                            <td><i class="fa fa-check"></i></td>
                                                                <%} else {%>
                                                            <td><a href="executeAdmin?para=status&user=<%= user.getUserId()%>"><code><i class="fa fa-remove"></i></code></td>
                                                                            <%
                                                                                    }
                                                                                }
                                                                            %>
                                                        </tr>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div><!-- /.tab-pane -->

                                            <div class="tab-pane active" id="tab_1">
                                                <table id="table_principal" class="table table-bordered table-striped table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>NIC</th>
                                                            <th>Address</th>
                                                            <th>Mobile</th>
                                                            <th>Land Line</th>
                                                            <th>Email</th>
                                                            <th>Grade</th>
                                                            <th>School</th>
                                                                <% if (u.getUserLevel().equals("Admin")) { %>
                                                            <th>Status</th>
                                                                <% } %>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ArrayList<Principal> arrPrincipal = DBDataList.getPrincipalList();
                                                            if (arrPrincipal != null) {
                                                                for (int i = 0; i < arrPrincipal.size(); i++) {
                                                                    Principal principal = (Principal) arrPrincipal.get(i);
                                                                    User user = principal.getUser();
                                                        %>
                                                        <tr>
                                                            <td><%= i + 1%></td>
                                                            <td><%= user.getFname()%></td>
                                                            <td><%= user.getLname()%></td>
                                                            <td><%= user.getNic()%></td>
                                                            <td><%= user.getAddress()%></td>
                                                            <td><%= user.getTelephone().getMobileNumber()%></td>
                                                            <td><%= user.getTelephone().getLandLine()%></td>
                                                            <td><%= user.getEmail()%></td>
                                                            <td><%= principal.getGrade()%></td>
                                                            <td><%= principal.getSchool().getName()%></td>
                                                            <%
                                                                if (u.getUserLevel().equals("Admin")) {
                                                                    if (user.getFlag() == 1) {
                                                            %>
                                                            <td><i class="fa fa-check"></i></td>
                                                                <%} else {%>
                                                            <td><a href="executeAdmin?para=status&user=<%= user.getUserId()%>"><code><i class="fa fa-remove"></i></code></td>
                                                                            <%
                                                                                    }
                                                                                }
                                                                            %>
                                                        </tr>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div><!-- /.tab-pane -->

                                            <% if (u.getUserLevel().equals("Admin")) { %>
                                            <div class="tab-pane" id="tab_4">
                                                <table id="table_admin" class="table table-bordered table-striped table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>NIC</th>
                                                            <th>Address</th>
                                                            <th>Mobile</th>
                                                            <th>Land Line</th>
                                                            <th>Email</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ArrayList<User> arrUser = DBDataList.getAdminList();
                                                            if (arrUser != null) {
                                                                for (int i = 0; i < arrUser.size(); i++) {
                                                                    User user = (User) arrUser.get(i);
                                                                    Telephone tel = user.getTelephone();
                                                        %>
                                                        <tr>
                                                            <td><%= i + 1%></td>
                                                            <td><%= user.getFname()%></td>
                                                            <td><%= user.getLname()%></td>
                                                            <td><%= user.getNic()%></td>
                                                            <td><%= user.getAddress()%></td>
                                                            <td><%= tel.getMobileNumber()%></td>
                                                            <td><%= tel.getLandLine()%></td>
                                                            <td><%= user.getEmail()%></td>
                                                            <% if (user.getFlag() == 1) {%>
                                                            <td><i class="fa fa-check"></i></td>
                                                                <%} else {%>
                                                            <td><a href="executeAdmin?para=status&user=<%= user.getUserId()%>"><code><i class="fa fa-remove"></i></code></td>
                                                                            <% } %>
                                                        </tr>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div><!-- /.tab-pane -->
                                            <% }%>

                                        </div><!-- /.tab-content -->
                                    </div><!-- nav-tabs-custom -->
                                </div><!-- /.col -->
                            </div>

                        </div>
                    </div>
                </section><!-- /.content -->

            </div><!-- /.content-wrapper -->

            <%@include file="footer.jsp" %>

        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 2.1.4 -->
        <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="plugins/jQueryUI/jquery-ui.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- DATA TABES SCRIPT -->
        <script src="plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js" type="text/javascript"></script>
        <script src="dist/js/demo.js" type="text/javascript"></script>

        <!-- Optionally, you can add Slimscroll and FastClick plugins.
              Both of these plugins are recommended to enhance the
              user experience. Slimscroll is required when using the
              fixed layout. -->

        <script type="text/javascript" src="plugins/jQueryUI/jquery-ui.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
        <script type="text/javascript" src="js/portBox.slimscroll.min.js"></script>
        <script type="text/javascript" src="js/validation.js"></script>

        <script type="text/javascript">
            $(function () {
                $("#table_parent").DataTable();
                $("#table_gn").DataTable();
                $("#table_principal").DataTable();
                $("#table_admin").DataTable();
            });
        </script>

    </body>
</html>