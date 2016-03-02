<%-- 
    Document   : adminPanel
    Created on : Jan 14, 2016, 9:30:05 PM
    Author     : Chanaka, Chandu
--%>

<%@page import="Model.Backup"%>
<%@page import="Model.Log"%>
<%@page import="Controller.DBDataList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Deadline"%>
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
                        ADMIN PANEL
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home.jsp"><i class="fa fa-dashboard"></i> G1EQES</a></li>
                    </ol>
                </section>

                <hr/>

                <!-- Main content -->
                <%
                    if (u.getUserLevel().equals("Admin")) {
                %>

                <section class="content">

                    <div class="row">
                        <div class="col-md-12">

                            <%
                                if (request.getParameter("msg") != null) {
                                    if (request.getParameter("msg").equals("errorDeadline")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    Oops! Something went wrong when saving deadlines. Please try again.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("successDeadline")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-success" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-check-circle"></i> Success</h4>
                                    Deadlines saved successfully.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("errorBackup")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    Oops! Something went wrong when system backup. Please try again.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("successBackup")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-success" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-check-circle"></i> Success</h4>
                                    Database backed up successfully.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("errorCalculate")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    Oops! Something went wrong when calculating marks. Please try again.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("successCalculate")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-success" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-check-circle"></i> Success</h4>
                                    Marks calculated successfully.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("error")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    Oops! Something went wrong. Please try again.
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                            <div class="container">
                                <div class="col-md-6">
                                    <form action="executeAdmin" method="POST">
                                        <input type="hidden" name="para" value="calculate"/>
                                        <button type="submit" class="btn btn-danger btn-lg"><i class="fa fa-calculator"></i> Calculate Marks</button>
                                    </form>
                                </div>
                                <div class="col-md-6">
                                    <form action="executeAdmin" method="POST">
                                        <input type="hidden" name="para" value="backup"/>
                                        <button type="submit" class="btn btn-success btn-lg pull-right"><i class="fa fa-database"></i> Backup Database</button>
                                    </form>
                                </div>
                            </div>

                            <hr/>

                            <div class="box box-info">
                                <!-- form start -->
                                <form action="saveDeadline" method="POST">

                                    <div class="box-header with-border">
                                        <h3 class="box-title">Timeline of Closing Dates</h3>
                                    </div>

                                    <div class="box-body">

                                        <table id="table_deadline" class="table table-bordered table-striped table-condensed">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Year</th>
                                                    <th>Application Closing</th>
                                                    <th>Grama Niladhari Approving Closing</th>
                                                    <th>Application Resend Closing</th>
                                                    <th>Grama Niladhari Approving Closing</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    ArrayList<Deadline> arrDeadline = DBDataList.getDeadlineList();
                                                    if (arrDeadline != null) {
                                                        for (int i = 0; i < arrDeadline.size(); i++) {
                                                            Deadline deadline = (Deadline) arrDeadline.get(i);
                                                            if (deadline.getYear().equals("2016")) {
                                                %>
                                                <tr class="active">
                                                    <td><%= i + 1%></td>
                                                    <td><%= deadline.getYear()%></td>
                                                    <td><%= deadline.getP1()%></td>
                                                    <td><%= deadline.getG1()%></td>
                                                    <td><%= deadline.getP2()%></td>
                                                    <td><%= deadline.getG2()%></td>
                                                </tr>
                                                <%
                                                } else {
                                                %>
                                                <tr>
                                                    <td><%= i + 1%></td>
                                                    <td><%= deadline.getYear()%></td>
                                                    <td><%= deadline.getP1()%></td>
                                                    <td><%= deadline.getG1()%></td>
                                                    <td><%= deadline.getP2()%></td>
                                                    <td><%= deadline.getG2()%></td>
                                                </tr>
                                                <%
                                                            }
                                                        }
                                                    }
                                                %>
                                            </tbody>
                                        </table>

                                        <hr class="bg-black" style="height: 5px;"/>

                                        <div class="row">
                                            <div class="col-xs-12">
                                                <label>Select a year for set the closing dates :</label>
                                                <select class="form-control input-lg" name="year">
                                                    <option>2016</option>
                                                    <option>2017</option>
                                                    <option>2018</option>
                                                    <option>2019</option>
                                                    <option>2020</option>
                                                </select>
                                            </div>
                                        </div>
                                        <hr/>
                                        <div class="row">
                                            <div class="col-xs-1" align="right">
                                                <span class="fa-stack fa-2x">
                                                    <i class="fa fa-circle-o fa-stack-2x"></i>
                                                    <strong class="fa-stack-1x">1</strong>
                                                </span>
                                            </div>
                                            <div class="col-xs-2">
                                                <label><i class="fa fa-calendar"></i> Application Closing</label>
                                                <input type="date" class="form-control" name="p1">
                                            </div>
                                            <div class="col-xs-1" align="right">
                                                <span class="fa-stack fa-2x">
                                                    <i class="fa fa-circle-o fa-stack-2x"></i>
                                                    <strong class="fa-stack-1x">2</strong>
                                                </span>
                                            </div>
                                            <div class="col-xs-2">
                                                <label><i class="fa fa-calendar"></i> Grama Niladhari Approving Closing</label>
                                                <input type="date" class="form-control" name="g1">
                                            </div>
                                            <div class="col-xs-1" align="right">
                                                <span class="fa-stack fa-2x">
                                                    <i class="fa fa-circle-o fa-stack-2x"></i>
                                                    <strong class="fa-stack-1x">3</strong>
                                                </span>
                                            </div>
                                            <div class="col-xs-2">
                                                <label><i class="fa fa-calendar"></i> Application Resend Closing</label>
                                                <input type="date" class="form-control" name="p2">
                                            </div>
                                            <div class="col-xs-1" align="right">
                                                <span class="fa-stack fa-2x">
                                                    <i class="fa fa-circle-o fa-stack-2x"></i>
                                                    <strong class="fa-stack-1x">4</strong>
                                                </span>
                                            </div>
                                            <div class="col-xs-2">
                                                <label><i class="fa fa-calendar"></i> Grama Niladhari Approving Closing</label>
                                                <input type="date" class="form-control" name="g2">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="box-footer">
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-primary pull-right">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /.box -->

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="box box-info">

                                        <div class="box-header with-border">
                                            <h3 class="box-title">System Log Data</h3>
                                        </div>

                                        <div class="box-body">
                                            <table id="table_log" class="table table-bordered table-striped table-condensed">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>User ID</th>
                                                        <th>Date</th>
                                                        <th>IP Address</th>
                                                        <th>Type</th>
                                                        <th>Description</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        ArrayList<Log> arrLog = DBDataList.getLogList();
                                                        if (arrLog != null) {
                                                            for (int i = 0; i < arrLog.size(); i++) {
                                                                Log log = (Log) arrLog.get(i);
                                                    %>
                                                    <tr>
                                                        <td><%= i + 1%></td>
                                                        <td><%= log.getUserID()%></td>
                                                        <td><%= log.getDatetime()%></td>
                                                        <td><%= log.getIp()%></td>
                                                        <% if (log.getType().equals("success")) {%>
                                                        <td><span class="label label-success"><%= log.getType()%></span></td>
                                                            <% } else {%>
                                                        <td><span class="label label-danger"><%= log.getType()%></span></td>
                                                            <% }%>
                                                        <td><%= log.getDescription()%></td>
                                                    </tr>
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div><!-- /.box -->
                                </div>

                                <div class="col-md-6">
                                    <div class="box box-info">

                                        <div class="box-header with-border">
                                            <h3 class="box-title">System Backup Data</h3>
                                        </div>

                                        <div class="box-body">
                                            <table id="table_backup" class="table table-bordered table-striped table-condensed">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Date</th>
                                                        <th>URL</th> 
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        ArrayList<Backup> arrBackup = DBDataList.getBackupList();
                                                        if (arrBackup != null) {
                                                            for (int i = 0; i < arrBackup.size(); i++) {
                                                                Backup backup = (Backup) arrBackup.get(i);
                                                    %>
                                                    <tr>
                                                        <td><%= i + 1%></td>                      
                                                        <td><%= backup.getDatetime()%></td>
                                                        <td><code><%= backup.getUrl()%></code></td>                                                        
                                                    </tr>
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div><!-- /.box -->
                                </div>
                            </div>

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

        <script type="text/javascript">
            $(function () {
                $("#table_deadline").DataTable();
                $("#table_log").DataTable();
                $("#table_backup").DataTable();
            });
        </script>
    </body>
</html>