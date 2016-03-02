<%-- 
    Document   : registerChild
    Created on : Jan 19, 2016, 11:44:23 PM
    Author     : Chanaka
--%>

<%@page import="Controller.DBDataList"%>
<%@page import="Model.Parent"%>
<%@page import="Model.User"%>
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
                        APPLICATION<small>Application for Admission to Grade One in Year 2016</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home.jsp"><i class="fa fa-dashboard"></i> G1EQES</a></li>
                    </ol>
                </section>

                <hr>

                <!-- Main content -->
                <%
                    ArrayList<School> arrSchool = DBDataList.getSchoolList();
                    Parent parent = null;
                    if (u.getUserLevel().equals("Parent")) {
                        parent = DBDataList.getParent(u.getUserId());
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
                                    Your child successfully registered.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("error")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    An error occurred when registering your child. Please try again.
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                            <div class="box box-info">
                                <!-- form start -->
                                <form class="form-horizontal" action="saveChild" method="POST">

                                    <div class="box-body">

                                        <!--------------------------- DETAILS OF THE CHILD---------------------------------------->
                                        <div class="form-group">
                                            <label class="col-sm-12 label-primary"> Details of the child </label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Name in full :</label>
                                            <div class="col-sm-9">
                                                <textarea name="fullname" id="fullname" rows="2" class="form-control" required=""></textarea>
                                                <!--<input name="fullname" type="text" class="form-control">-->
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Initials :</label>
                                            <div class="col-sm-3">
                                                <input name="initials" id="initials"  class="form-control" placeholder="Eg : A.G.D.A" required="">
                                            </div>
                                            <label class="col-sm-3 control-label"> Last name :</label>
                                            <div class="col-sm-3">
                                                <input name="lname" id="lname"  class="form-control" placeholder="Eg : Gunasekara" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Sex :</label>
                                            <div class="col-sm-3">
                                                <select name="sex" class="form-control" required="">
                                                    <option value="select" selected="">- Select -</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                            <label class="col-sm-3 control-label"> Religion :</label>
                                            <div class="col-sm-3">
                                                <select name="religion" id="religion" class="form-control">
                                                    <option value="select" selected="">- Select -</option>
                                                    <option value="Buddhism">Buddhism</option>
                                                    <option value="Christianity">Christianity</option>
                                                    <option value="Hinduism">Hinduism</option>
                                                    <option value="Islam">Islam</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Medium of learning :</label>
                                            <div class="col-sm-3">
                                                <select name="medium" class="form-control" required="">
                                                    <option value="select" selected="">- Select -</option>
                                                    <option value="Sinhala">Sinhala</option>
                                                    <option value="Tamil">Tamil</option>
                                                </select>
                                            </div>
                                            <label class="col-sm-3 control-label"> Date of birth:</label>
                                            <div class="col-sm-3">
                                                <input name="dob" type="date" class="form-control" required="">
                                            </div>
                                        </div>

                                        <hr> 

                                        <!-- ----------------- DECLARATION -------------------------------------->
                                        <div class="form-group">
                                            <label class="col-sm-12 label-primary">Declaration</label>
                                        </div>
                                        <p>
                                            <strong>I hereby declare that my child is not attending any government school; government approved private school or any other school at present for his/ her studies. I also declare that the details furnished above are true and correct and I agree further to submit satisfactory evidence relating to my permanent residence and other information indicated here. I am also aware that my application will be rejected if any information furnished by me is found to be false/ forged. If it is revealed after the admission of my child that the information furnished is false/ forged I agree to remove my child from the school and admit him/her to another school in the area nominated by the Department of Education.</strong>
                                        </p>

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
                %>
                <div class="pad margin no-print">
                    <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                        <h4><i class="fa fa-warning"></i> Warning</h4>
                        Create a parent account to submit an application.
                    </div>
                </div>
                <%
                    }
                %>

            </div><!-- /.content-wrapper -->

            <%@include file="footer.jsp" %>

        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->
        <script>
            function set_school_cat() {     //set the category of the selected school in the category field
                var scl = document.getElementById('school')
            <%
                for (int i = 0; i < arrSchool.size(); i++) {

                }
            %>
                document.getElementById("distance_auto").value = document.getElementById("distance").value + " km";
            }

            function change_other_ownership() {     //enable "other" field if other is selected
                var comp = document.getElementById('ownership');
                if (comp.value == 'other') {
                    document.getElementById("other_ownership").disabled = false;
                } else {
                    document.getElementById("other_ownership").disabled = true;
                }
            }

            function set_distance() {       //set distance as the previous field
                document.getElementById("distance_auto").value = document.getElementById("distance").value + " km";
            }
        </script>

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