<%-- 
    Document   : registerApplication
    Created on : Dec 16, 2015, 9:34:17 PM
    Author     : Sachi
--%>

<%@page import="Model.Student"%>
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
                                    Your application successfully registered.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("error")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    An error occurred when registering your application. Please try again.
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                            <div class="box box-info">
                                <!-- form start -->
                                <form class="form-horizontal" action="saveApplication" method="POST">

                                    <div class="box-body">

                                        <!----------------------CATEGORY APPLIED FOR ------------------------------------------>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">School applying for :</label>
                                            <div class="col-sm-3">
                                                <select name="school" class="form-control" onchange="set_school_cat()">
                                                    <option value="select" selected="" disabled="">Select the School</option>
                                                    <%
                                                        if (arrSchool != null) {
                                                            for (int i = 0; i < arrSchool.size(); i++) {
                                                                School school = (School) arrSchool.get(i);
                                                    %>
                                                    <option value="<%= school.getSchoolId()%>"><%= school.getName()%></option>
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                        <!--<label class="col-sm-12" style="text-decoration:underline">Note:- Separate applications should be submitted when it is under several categories</label>-->

                                        <!--------------------------- DETAILS OF THE CHILD---------------------------------------->
                                        <div class="form-group">
                                            <label class="col-sm-12 label-primary"> Details of the child </label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Child applying for :</label>
                                            <div class="col-sm-3">
                                                <select name="child" class="form-control">
                                                    <option value="select" selected="" disabled="">Select the Child</option>
                                                    <%
                                                        ArrayList<Student> arrStudent = DBDataList.getChildList(parent);
                                                        if (arrSchool != null) {
                                                            for (int i = 0; i < arrStudent.size(); i++) {
                                                                Student student = (Student) arrStudent.get(i);
                                                    %>
                                                    <option value="<%= student.getStudentId()%>"><%= student.getFullName()%></option>
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>

                                        <hr> 

                                        <!----------------------------------- DETAILS OF THE PARENT ------------------------------------------>
                                        <div class="form-group">
                                            <label class="col-sm-12 label-primary"> Details of the applicant: (Mother/Father/Legal Guardian)</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Name in full :</label>
                                            <div class="col-sm-9">
                                                <textarea name="fullname_parent" id="fullname_parent" rows="2" class="form-control" required=""></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Is a Sri Lankan :</label>
                                            <div class="col-sm-3">
                                                <input type="checkbox" id="issrilankan" name="issrilankan"required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Distance to the school from the place of residence :</label>
                                            <div class="col-sm-3">
                                                <input onchange="set_distance()" placeholder="km"name="distance" id="distance" class="form-control" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> First name :</label>
                                            <div class="col-sm-3">
                                                <input name="fname_parent" id="fname_parent" class="form-control" disabled="" value="<%= u.getFname()%>">
                                            </div>
                                            <label class="col-sm-3 control-label"> Last name :</label>
                                            <div class="col-sm-3">
                                                <input name="lname_parent" id="lname_parent" class="form-control" disabled="" value="<%= u.getLname()%>">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> NIC :</label>
                                            <div class="col-sm-3">
                                                <input name="nic_parent" id="nic_parent" class="form-control" disabled="" value="<%= u.getNic()%>">
                                            </div>
                                            <label class="col-sm-3 control-label"> Religion :</label>
                                            <div class="col-sm-3">

                                                <input name="religion_parent" id="religion_parent" class="form-control" disabled="" value="<%= parent.getReligion()%>">

                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <label class="col-sm-3 control-label"> Telephone number :</label>
                                            <div class="col-sm-3">
                                                <input name="tel_parent" id="tel_parent" class="form-control" disabled="" value="<%= u.getTelephone().getMobileNumber()%>">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Permanent address :</label>
                                            <div class="col-sm-9">
                                                <textarea name="address_parent" id="address_parent" rows="2" class="form-control" disabled=""><%= u.getAddress()%></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"> Residential district :</label>
                                            <div class="col-sm-3">
                                                <input name="district" id="district" class="form-control" disabled="" value="<%= parent.getDistrict()%>">
                                            </div>
                                            <label class="col-sm-3 control-label"> Divisional Secretary area :</label>
                                            <div class="col-sm-3">
                                                <input name="div_sec" id="div_sec" class="form-control"  disabled="" value="<%= parent.getDivisionSecretary()%>">
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Grama Niladhari Division :</label>
                                            <div class="col-sm-3">
                                                <input name="grama_div" id="grama_div" class="form-control" disabled="" value="<%= parent.getGramaDivision()%>">
                                            </div>
                                        </div>

                                        <!--------------------ADDITIONAL INFO ---------------------->

                                        <div class="form-group">
                                            <label class="col-sm-12 label-primary">Additional information - Please complete only the relevant sections</label>
                                        </div>

                                        <!-- ------------------------ CLOSE PROXIMITY-------------------------------------->
                                        <div class="form-group">
                                            <label class="col-sm-12 label-default"> Children of residents in close proximity to the school</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Distance to the school from the place of residence :</label>
                                            <div class="col-sm-6">
                                                <input placeholder="Please insert distance in the applicant details"disabled="" name="distance_auto" id="distance_auto" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Number of years that the applicant and spouse/ Legal guardian was included in the electoral register :</label>
                                            <div class="col-sm-6">
                                                <input name="AND_year_count" id="AND_year_count" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Number of years that either the name of the applicant or the name of the spouse was included in the electoral register :</label>
                                            <div class="col-sm-6">
                                                <input name="OR_year_count" id="OR_year_count" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-12 control-label ">(This is applicable for a period of recent 05 years, prior to the year the application is submitted)</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Ownership of the place of residence :</label>
                                            <div class="col-sm-6">
                                                <select name="ownership" id="ownership" class="form-control" onchange="change_other_ownership()">
                                                    <option value="select" selected="">- Select -</option>
                                                    <option value="deed">Title deed - in the name of applicant or spouse or applicant’s Parents</option>
                                                    <option value="lease_reg">Registered Lease Bond </option>
                                                    <option value="quarters">Government Official Quarters Documents</option>
                                                    <option value="lease_unreg">Un-registered Lease Bond </option>
                                                    <option value="other">Other (Specify) </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Specify other legal document :</label>
                                            <div class="col-sm-6">
                                                <input  name="other_ownership" id="other_ownership" class="form-control" disabled="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Additional documents which could be submitted in proof of Residence :</label>
                                            <div class="col-sm-6">
                                                <input name="ad_ownership" id="ad_ownership" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Number of schools located closer to the place of residence where the child could be admitted than the school applied for :</label>
                                            <div class="col-sm-6">
                                                <input name="close_schools_count" id="close_school_count" class="form-control">
                                            </div>
                                        </div>

                                        <!-------------------- PAST PUPILS------------------------------------>
                                        <div class="form-group">
                                            <label class="col-sm-12 label-default"> Children of Past Pupils</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label ">Past pupil reference :</label>
                                            <div class="col-sm-3">
                                                <select name="past_pupil_ref" id="past_pupil_ref" class="form-control" onchange="change_other_ownership()">
                                                    <option value="select" selected="">Select..</option>
                                                    <option value="mother">Mother</option>
                                                    <option value="father">Father </option>
                                                </select>
                                            </div>
                                            <label class="col-sm-3 control-label ">Admission No. </label>
                                            <div class="col-sm-3">
                                                <input name="past_pupil_id" id="past_pupil_id" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label ">Full name : </label>
                                            <div class="col-sm-9">
                                                <input name="past_pupil_name" id="past_pupil_name" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label ">Period spent in the school as a pupil</label>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label ">From: (Grade)</label>
                                            <!--<label class="col-sm-1 control-label ">From </label>-->
                                            <div class="col-sm-3">
                                                <input name="past_pupil_from_grade" id="past_pupil_from_grade" class="form-control" placeholder="Eg : 1">
                                            </div>
                                            <label class="col-sm-3 control-label ">From year </label>
                                            <div class="col-sm-3">
                                                <input name="past_pupil_from_year" id="past_pupil_from_year" class="form-control"placeholder="Eg : 1999" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label ">To: (Grade)</label>
                                            <!--<label class="col-sm-1 control-label ">From </label>-->
                                            <div class="col-sm-3">
                                                <input name="past_pupil_to_grade" id="past_pupil_to_grade" class="form-control" placeholder="Eg : 11">
                                            </div>
                                            <label class="col-sm-3 control-label ">To year</label>
                                            <div class="col-sm-3">
                                                <input name="past_pupil_to_year" id="past_pupil_to_year" class="form-control"placeholder="Eg : 2009" >
                                            </div>
                                        </div>

                                        <!------------------SIBLING REFERENCE --------------------------------->
                                        <div class="form-group">
                                            <label class="col-sm-12 label-default"> Brothers/ sisters of students who are studying in the school at present</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-6 control-label ">Name of child :</label>
                                            <label class="col-sm-3 control-label ">Grade </label>
                                            <label class="col-sm-3 control-label ">Admission No. </label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label ">1 </label>
                                            <div class="col-sm-5">
                                                <input name="sibling_1_name" id="sibling_1_name" class="form-control">
                                            </div>
                                            <div class="col-sm-3">
                                                <input name="sibling_1_grade" id="sibling_1_grade" class="form-control">
                                            </div>
                                            <div class="col-sm-3">
                                                <input name="sibling_1_id" id="sibling_1_id" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label ">2 </label>
                                            <div class="col-sm-5">
                                                <input name="sibling_2_name" id="sibling_2_name" class="form-control">
                                            </div>
                                            <div class="col-sm-3">
                                                <input name="sibling_2_grade" id="sibling_2_grade" class="form-control">
                                            </div>
                                            <div class="col-sm-3">
                                                <input name="sibling_2_id" id="sibling_2_id" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label ">3 </label>
                                            <div class="col-sm-5">
                                                <input name="sibling_3_name" id="sibling_3_name" class="form-control">
                                            </div>
                                            <div class="col-sm-3">
                                                <input name="sibling_3_grade" id="sibling_3_grade" class="form-control">
                                            </div>
                                            <div class="col-sm-3">
                                                <input name="sibling_3_id" id="sibling_3_id" class="form-control">
                                            </div>
                                        </div>

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