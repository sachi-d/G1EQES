<%-- 
    Document   : signUp
    Created on : Dec 15, 2015, 11:32:55 AM
    Author     : Chanaka
--%>

<%@page import="Model.GramaNiladhariDiv"%>
<%@page import="Model.GramaNiladhari"%>
<%@page import="Model.DivisionSec"%>
<%@page import="Model.District"%>
<%@page import="Model.Province"%>
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
        <!-- Tell the browser to be responsive to screen width -->
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.4 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- iCheck -->
        <link href="plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

        <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="css/portBox.css" rel="stylesheet" type="text/css" />
        <link href="css/hover.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            function change(obj) {
                $("#parent").css("display", "");
                var selectBox = obj;
                var selected = selectBox.options[selectBox.selectedIndex].value;

                if (selected === 'Parent') {
                    $("#hr").css("display", "");
                    $("#nationality").css("display", "");
                    $("#religion").css("display", "");
                    $("#province").css("display", "");
                    $("#district").css("display", "");
                    $("#divisionalsec").css("display", "");
                    $("#gramadivision").css("display", "");
                    $("#grade").css("display", "none");
                    $("#school").css("display", "none");
                } else if (selected === 'Principal') {
                    $("#hr").css("display", "");
                    $("#nationality").css("display", "none");
                    $("#religion").css("display", "none");
                    $("#province").css("display", "none");
                    $("#district").css("display", "none");
                    $("#divisionalsec").css("display", "none");
                    $("#gramadivision").css("display", "none");
                    $("#gramadivision").css("display", "none");
                    $("#school").css("display", "");
                    $("#grade").css("display", "");
                } else if (selected === 'GramaNiladhari') {
                    $("#hr").css("display", "");
                    $("#nationality").css("display", "none");
                    $("#religion").css("display", "none");
                    $("#province").css("display", "none");
                    $("#district").css("display", "none");
                    $("#divisionalsec").css("display", "none");
                    $("#school").css("display", "none");
                    $("#gramadivision").css("display", "");
                    $("#grade").css("display", "");
                }
            }
        </script>
    </head>

    <body class="register-page" style="background-image: url('img/background.jpg');">
        <div class="register-box">
            <%
                if (request.getParameter("msg") != null) {
                    if (request.getParameter("msg").equals("error")) {
            %>
            <div class="pad margin no-print">
                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                    Oops! Something went wrong. <br/>Please try again.
                </div>
            </div>
            <%
                }
                if (request.getParameter("msg") == "available") {
            %>
            <div class="pad margin no-print">
                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                    Username is available. Please try with another.
                </div>
            </div>
            <%
                    }
                }
            %>

            <div class="register-logo text-yellow">
                Ministry of <b>Education</b>
            </div>
            <div class="box box-info">
                <div class="register-box-body">
                    <p class="login-box-msg"><strong>Register to G1EQES</strong></p>
                    <form action="saveUser" method="POST">
                        <div class="form-group input-group">
                            <select name="type" class="form-control" required onchange="change(this);">
                                <option value="select" selected="" disabled="">Select User Type</option>
                                <option value="Admin">Admin</option>
                                <option value="Parent">Parent</option>
                                <option value="Principal">Principal</option>
                                <option value="GramaNiladhari">Grama Niladhari</option>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-star"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="fn" type="text" class="form-control" placeholder="First Name" required>
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="ln" type="text" class="form-control" placeholder="Last Name" required>
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="nic" type="text" class="form-control" placeholder="NIC" required maxlength="9">
                            <span class="input-group-addon">V</span>
                            <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="address" type="text" class="form-control" placeholder="Address" required>
                            <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="mobile" type="text" class="form-control" placeholder="Mobile No" maxlength="10" required>
                            <span class="input-group-addon"><i class="fa fa-mobile"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="landline" type="text" class="form-control" placeholder="Land Line No" maxlength="10" required>
                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="email" type="email" class="form-control" placeholder="E-Mail" required>
                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        </div>
                        <hr id="hr" style="display: none;">
                        <div id="nationality" class="form-group input-group" style="display: none;">
                            <select name="nationality" class="form-control" required onchange="change(this);">
                                <option value="select" selected="" disabled="">Select Nationality</option>
                                <option value="SriLankan">Sri Lankan</option>
                                <option value="Other">Other</option>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-flag"></i></span>
                        </div>
                        <div id="religion" class="form-group input-group" style="display: none;">
                            <select name="religion" class="form-control" required onchange="change(this);">
                                <option value="select" selected="" disabled="">Select Religion</option>
                                <option value="Buddhism">Buddhism</option>
                                <option value="Christianity">Christianity</option>
                                <option value="Hinduism">Hinduism</option>
                                <option value="Islam">Islam</option>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-quote-left"></i></span>
                        </div>
                        <div id="grade" class="form-group input-group" style="display: none;">
                            <input name="grade" type="text" class="form-control" placeholder="Job Class">
                            <span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
                        </div>
                        <div id="school" class="form-group input-group" style="display: none;">
                            <select name="school" class="form-control">
                                <option value="select" selected="" disabled="">Select the School</option>
                                <%
                                    ArrayList<School> arrSchool = DBDataList.getSchoolList();
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
                            <span class="input-group-addon"><i class="fa fa-cog"></i></span>
                        </div>
                        <div id="province" class="form-group input-group" style="display: none;">
                            <select name="province" class="form-control">
                                <option value="select" selected="" disabled="">-Choose a Province-</option>
                                <%
                                    ArrayList<Province> arrProvince = DBDataList.getProvinceList();
                                    if (arrProvince != null) {
                                        for (int i = 0; i < arrProvince.size(); i++) {
                                            Province province = (Province) arrProvince.get(i);
                                %>
                                <option value="<%= province.getProvinceID()%>"><%= province.getName()%></option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-cog"></i></span>
                        </div>
                        <div id="district" class="form-group input-group" style="display: none;">
                            <select name="district" class="form-control">
                                <option value="select" selected="" disabled="">-Choose a District-</option>
                                <%
                                    ArrayList<District> arrDistrict = DBDataList.getDistrictList();
                                    if (arrDistrict != null) {
                                        for (int i = 0; i < arrDistrict.size(); i++) {
                                            District district = (District) arrDistrict.get(i);
                                %>
                                <option value="<%= district.getDistrictID()%>"><%= district.getName()%></option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-cog"></i></span>
                        </div>
                        <div id="divisionalsec" class="form-group input-group" style="display: none;">
                            <select name="divisionalsec" class="form-control">
                                <option value="select" selected="" disabled="">-Choose a Divisional Secretariat-</option>
                                <%
                                    ArrayList<DivisionSec> arrDiviSec = DBDataList.getDivisionSecList();
                                    if (arrDistrict != null) {
                                        for (int i = 0; i < arrDiviSec.size(); i++) {
                                            DivisionSec divisionsec = (DivisionSec) arrDiviSec.get(i);
                                %>
                                <option value="<%= divisionsec.getDistrictID()%>"><%= divisionsec.getName()%></option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-cog"></i></span>
                        </div>
                        <div id="gramadivision" class="form-group input-group" style="display: none;">
                            <select name="gramadivision" class="form-control">
                                <option value="select" selected="" disabled="">-Choose a Grama Niladhari Division-</option>
                                <%
                                    ArrayList<GramaNiladhariDiv> arrGramaDiv = DBDataList.getGramaDivList();
                                    if (arrDistrict != null) {
                                        for (int i = 0; i < arrGramaDiv.size(); i++) {
                                            GramaNiladhariDiv gramaNiladhariDiv = (GramaNiladhariDiv) arrGramaDiv.get(i);
                                %>
                                <option value="<%= gramaNiladhariDiv.getGramaDivID()%>"><%= gramaNiladhariDiv.getName()%></option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                            <span class="input-group-addon"><i class="fa fa-cog"></i></span>
                        </div>
                        <hr>
                        <div class="form-group input-group">
                            <input name="un" type="text" class="form-control" placeholder="Username" required>
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="form-group input-group">
                            <input name="pw" type="password" class="form-control" placeholder="Password" required>
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 text-center">
                                <button type="submit" class="btn btn-primary">Register</button>
                            </div>
                        </div>
                    </form>
                    <br/>
                    <div class="form-group">
                        <span>By registering above, you confirm that you accept the <a>Terms of Use</a> of Ministry of Education.</span>
                    </div>
                    <p></p>
                    <a href="index.jsp" class="center-block text-center"><code>I already have a account</code></a>
                </div><!-- /.form-box -->
            </div>
        </div><!-- /.register-box -->

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

        <!-- iCheck -->
        <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <script>
                                $(function () {
                                    $('input').iCheck({
                                        checkboxClass: 'icheckbox_square-blue',
                                        radioClass: 'iradio_square-blue',
                                        increaseArea: '20%' // optional
                                    });
                                });
        </script>

        <!--Validation-->
        <script>
            $(document).on('submit', '#insertForm', function () {
                if ($('#type').val() === null || $('#work').val() === null || !$.isNumeric($('#mobile').val())) {
                    event.preventDefault();
                    $('#modalButtonValidate').click();
                }
                if ($('#mobile').val().length != 10) {
                    event.preventDefault();
                    $('#modalButtonValidate').click();
                }
            });
        </script>
    </body>
</html>
