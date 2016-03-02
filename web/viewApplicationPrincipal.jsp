<%-- 
    Document   : viewApplicationPrincipal
    Created on : Dec 16, 2015, 9:08:27 PM
    Author     : Dimuthu
--%>

<%@page import="Model.Sibling"%>
<%@page import="Model.PastPupil"%>
<%@page import="Controller.DeadLineController"%>
<%@page import="Model.Deadline"%>
<%@page import="Controller.RegistryController"%>
<%@page import="Controller.DBDataList"%>
<%@page import="Model.School"%>
<%@page import="java.util.ArrayList"%>
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
                        APPLICATION<small>View for Principal</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home.jsp"><i class="fa fa-dashboard"></i> G1EQES</a></li>
                    </ol>
                </section>

                <hr>

                <!-- Main content -->
                <%
                    if (u.getUserLevel().equals("Principal")) {
                %>
                <section class="content">

                    <button data-display="modalWindowReason" data-animation="fade" data-animationspeed="300" data-closeBGclick="true" id="reasonModalButton" style="display: none"></button><br>
                    <button data-display="modalWindowApplication" data-animation="fade" data-animationspeed="300" data-closeBGclick="true" id="applicationModalButton" style="display: none"></button><br>
                    <div id="modalWindowApplication" class="col-md-10 portBox" style="display: none;">
                        <%@include file="application.jsp" %>     
                    </div>
                    <div id="modalWindowReason" class="col-md-10 portBox" style="display: none;">
                        <div class="box box-info">
                            <!-- form start -->
                            <form class="form-horizontal">

                                <div class="box-body">
                                    <br>
                                    <!----------------------CATEGORY APPLIED FOR ------------------------------------------>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Reason :</label>
                                        <div class="col-sm-8">
                                            <input type="text" name="reason" id="reason" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="submit" id="reasonbtn" class="btn btn-primary pull-right">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">

                            <div class="box box-solid">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <%
                                                Deadline gramadeadline_1 = DeadLineController.getGramaDeadlineOne();
                                                if (u.getUserLevel().equals("Principal")) {
                                            %>
                                            <table id="table_view" class="table table-bordered table-striped table-condensed">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Reg ID</th>
                                                        <th>Student Name</th>
                                                        <th>School</th>
                                                        <th>Gender</th>
                                                        <th>Religion</th>
                                                        <th>Status</th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        ArrayList<Object[]> registryData = RegistryController.getPrincipalData(u);
                                                        if (registryData != null) {
                                                            for (int i = 0; i < registryData.size(); i++) {
                                                                Object[] allData = registryData.get(i);
                                                                String[] data = (String[]) allData[0];
                                                                PastPupil p = (PastPupil) allData[1];

                                                                ArrayList<Sibling> siblingList = (ArrayList<Sibling>) allData[2];

                                                                String siblingsDetail = "";
                                                                for (Sibling sb : siblingList) {
                                                                    String siblingData = sb.getSibling().getFullName() + "#" + sb.getAdmissionNo() + "#" + sb.getCurrentGrade();
                                                                    siblingsDetail += siblingData + "@";
                                                                }
                                                                String pastPupilDetail = "";
                                                                if (p.getFromGrade() != null) {
                                                                    pastPupilDetail = p.getPpId() + "#" + p.getPastPupil().getFullName() + "#" + p.getFromGrade() + "#" + p.getToGrade() + "#" + p.getFromYear() + "#" + p.getToYear();
                                                                };
                                                    %>
                                                    <tr>
                                                        <td style="display: none" class="student-data"><%= data[39 - 1] + "%" + data[41 - 1] + "%" + data[12 - 1] + "%" + data[11 - 1] + "%" + data[15 - 1] + "%" + data[16 - 1] + "%" + data[17 - 1] + "%" + data[14 - 1] + "%" + data[33 - 1] + " " + data[32 - 1] + "%" + data[34 - 1] + "%" + data[23 - 1] + "%" + data[22 - 1] + "%" + data[35 - 1] + "%" + data[26 - 1] + "%" + data[25 - 1] + "%" + data[27 - 1] + "%" + data[5 - 1]%></td>
                                                        <td><%= i + 1%></td>
                                                        <td class="reg_id"><%= data[0]%></td>
                                                        <td><%= data[1]%></td>
                                                        <td><%= data[2]%></td>
                                                        <td><%= data[3]%></td>
                                                        <td><%= data[4]%></td>
                                                        <td class="status"><span class="label label-default"><%= data[8].split(":")[0]%></span></td>
                                                        <td><a href="#"><button type="button" class="btn btn-xs btn-primary principal-view-application"><i class="fa fa-map-marker"></i> View Application</button></a></td>
                                                        <%
                                                            if (data[8].equals("int-selected") || data[8].contains("failed") || data[8].contains("passed")) {%>
                                                        <td><a href="#"><button type="button" class="btn btn-xs btn-success principal-pass"><i class="fa fa-map-marker"></i> Interview Pass</button></a></td>
                                                        <td><a href="#"><button type="button" class="btn btn-xs btn-danger principal-fail"><i class="fa fa-map-marker"></i> Interview Fail</button></a></td>
                                                        <% } else if (data[8].equals("calculated") || data[8].contains("int-rejected")) { %>
                                                        <td><a href="#"><button type="button" class="btn btn-xs btn-success principal-call-interview"><i class="fa fa-map-marker"></i> Call interview</button></a></td>
                                                        <td><a href="#"><button type="button" class="btn btn-xs btn-danger principal-reject"><i class="fa fa-map-marker"></i> Reject</button></a></td>
                                                        <td style="display: none"><a href="#"><button type="button" class="btn btn-xs btn-success principal-pass"><i class="fa fa-map-marker"></i> Interview Pass</button></a></td>
                                                        <td style="display: none"><a href="#"><button type="button" class="btn btn-xs btn-danger principal-fail"><i class="fa fa-map-marker"></i> Interview Fail</button></a></td>
                                                        <%}%>
                                                        <td class="sibling-detail" style="display: none"><%= pastPupilDetail%></td>
                                                        <td class="sibling-detail" style="display: none"><%= siblingsDetail%></td>
                                                    </tr>
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                            <%}%>
                                        </div><!-- /.col -->
                                    </div>
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
            var reg_id = "";
            var failedOrIntregjected = "";
            var element_1 = "";
            $('.principal-call-interview').click(function () {
                var element = $(this);
                var register_id = $(this).parent().parent().parent().children(".reg_id").text();
                $.ajax({
                    type: "GET",
                    url: 'RegistryController',
                    data: {
                        register_id: register_id, status: 'int-selected', function: 'principal-choice'
                    },
                    success: function (responseText) {
                        if (responseText.indexOf("{isSuccess:1}") != -1) {
                            element.parent().parent().prev().prev().text("int-selected");
                            element.parent().parent().hide();
                            element.parent().parent().next().hide();
                            element.parent().parent().next().next().show();
                            element.parent().parent().next().next().next().show();
                        }
                    }
                });
            });
            $('.principal-reject').click(function () {
                $('#reasonModalButton').click();
                reg_id = $(this).parent().parent().parent().children(".reg_id").text();
                failedOrIntregjected = "int-rejected";
                element_1 = $(this);

            });

            $('.principal-fail').click(function () {
                $('#reasonModalButton').click();
                reg_id = $(this).parent().parent().parent().children(".reg_id").text();
                failedOrIntregjected = "failed";
                element_1 = $(this);

            });

            $('#reasonbtn').click(function (e) {
                e.preventDefault();
                var reason = $('#reason').val();
                $.ajax({
                    type: "GET",
                    url: 'RegistryController',
                    data: {
                        register_id: reg_id, status: failedOrIntregjected + ':' + reason, function: 'principal-choice'
                    },
                    success: function (responseText) {
                        if (responseText.indexOf("{isSuccess:1}") != -1) {
                            element_1.parent().parent().parent().children(".status").text(failedOrIntregjected);
                            location.reload();
                        }
                    }
                });
            });
            $('.principal-pass').click(function () {
                var register_id = $(this).parent().parent().parent().children(".reg_id").text();
                var element = $(this);
                $.ajax({
                    type: "GET",
                    url: 'RegistryController',
                    data: {
                        register_id: register_id, status: 'passed', function: 'principal-choice'
                    },
                    success: function (responseText) {
                        if (responseText.indexOf("{isSuccess:1}") != -1) {
                            element.parent().parent().parent().children(".status").text("passed");
                        }
                    }
                });
            });
            $('.principal-view-application').click(function () {
                var rawData = $(this).parent().parent().parent().children().first().text();
                var siblingRawData = $(this).parent().parent().parent().children().last().text().split('@');
                var pastPupilData = $(this).parent().parent().parent().children().last().prev().text().split('#');

                var data = rawData.split('%');
                $('#school').val(data[0]);
                $('#category').val(data[1]);
                $('#fullname').val(data[2]);
                $('#initials').val(data[3]);
                $('#sex').val(data[4]);
                $('#religion').val(data[5]);
                $('#medium').val(data[6]);
                $('#dob').val(data[7]);
                $('#fullname_parent').val(data[8]);
                $('#nic_parent').val(data[9]);
                $('#religion_parent').val(data[10]);
                $('#issrilankan').val(data[11]);
                $('#address_parent').val(data[12]);
                $('#divisionalsec').val(data[13]);
                $('#district').val(data[14]);
                $('#grama_div').val(data[15]);
                $('#distance').val(data[16]);

                $.each(siblingRawData, function (index, value) {
                    var siblingData = value.split('#');

                    if (index == 0) {
                        $('#sibling_1_id').val(siblingData[1]);
                        $('#sibling_1_grade').val(siblingData[2]);
                        $('#sibling_1_name').val(siblingData[0]);
                    } else if (index == 1) {
                        $('#sibling_2_id').val(siblingData[1]);
                        $('#sibling_2_grade').val(siblingData[2]);
                        $('#sibling_2_name').val(siblingData[0]);
                    } else if (index == 2) {
                        $('#sibling_3_id').val(siblingData[1]);
                        $('#sibling_3_grade').val(siblingData[2]);
                        $('#sibling_3_name').val(siblingData[0]);
                    }
                });

                $('#past_pupil_id').val(pastPupilData[0]);
                $('#past_pupil_name').val(pastPupilData[1]);
                $('#past_pupil_from_grade').val(pastPupilData[2]);
                $('#past_pupil_to_grade').val(pastPupilData[3]);
                $('#past_pupil_from_year').val(pastPupilData[4]);
                $('#past_pupil_to_year').val(pastPupilData[5]);

                $('#updatebtnapplication').show();

                if (!($('#validityOfDate').text() == 'true')) {
                    $('#updatebtnapplication').prop('disabled', true);
                }

                $('#applicationModalButton').click();
            })
        </script>
    </body>
</html>