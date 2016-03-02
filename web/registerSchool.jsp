<%-- 
  Document  : registerSchool
  Created on : Dec 16, 2015, 9:23:41 PM
  Author   : Chandu
--%>

<%@page import="Model.Province"%>
<%@page import="Controller.DBDataList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.District"%>
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
                        SCHOOLS<small>Register School</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home.jsp"><i class="fa fa-dashboard"></i> G1EQES</a></li>
                    </ol>
                </section>

                <hr>

                <!-- Main content -->
                <%
                    if (u.getUserLevel().equals("Admin")) {
                %>

                <section class="content">

                    <div class="row">
                        <div class="col-md-12">

                            <%
                                if (request.getParameter("msg") != null) {
                                    if (request.getParameter("msg").equals("success")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-success" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-check"></i> Success</h4>
                                    New school successfully saved.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("error")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    An error occurred when saving new school. Please try again.
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                            <div class="box box-info">
                                <!-- form start -->
                                <form class="form-horizontal" action="saveSchool" method="POST">

                                    <div class="box-body">

                                        <div class="form-group">
                                            <label class="col-sm-3 control-label ">Category :</label>
                                            <div class="col-sm-3">
                                                <select name="category" id="category" class="form-control" required="">
                                                    <option value="select" selected disabled>Select Category</option>
                                                    <option value="National">National</option>
                                                    <option value="Provincial">Provincial</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">School Name :</label>
                                            <div class="col-sm-9">
                                                <input name="name" id="name" class="form-control" required="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Address :</label>
                                            <div class="col-sm-9">
                                                <input name="address" id="address" class="form-control" required="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Province :</label>
                                            <div class="col-sm-3">
                                                <select name="province" id="province" class="form-control" required="">
                                                    <option value="select" selected="" disabled="">Select Province</option>
                                                    <%
                                                        ArrayList<Province> arrPrv = DBDataList.getProvinceList();
                                                        if (arrPrv != null) {
                                                            for (int i = 0; i < arrPrv.size(); i++) {
                                                                Province province = (Province) arrPrv.get(i);
                                                    %>                        
                                                    <option value="<%=province.getName()%>"><%= province.getName()%></option>                        
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <label class="col-sm-3 control-label">District :</label>
                                            <div class="col-sm-3">
                                                <select name="district" id="district" class="form-control" required="">
                                                    <option value="select" selected="" disabled="">Select District</option>
                                                    <%
                                                        ArrayList<District> arrDis = DBDataList.getDistrictList();
                                                        if (arrDis != null) {
                                                            for (int i = 0; i < arrDis.size(); i++) {
                                                                District district = (District) arrDis.get(i);
                                                    %>                        
                                                    <option value="<%=district.getName()%>"><%= district.getName()%></option>                        
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Contact No :</label>
                                            <div class="col-sm-3">
                                                <input name="contact" id="contact" class="form-control" maxlength="10" required="">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="box-footer">
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-primary pull-right">Register</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /.box -->

                        </div>
                    </div>

                </section><!-- /.content -->

                <%
                    } else {
                        response.sendRedirect("401.jsp");
                    }
                %>

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

    </body>
</html>