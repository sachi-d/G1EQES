<%-- 
    Document   : home
    Created on : Dec 15, 2015, 11:30:11 AM
    Author     : Chanaka
--%>

<%@page import="Controller.Counter"%>
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
        <!-- Date Picker -->
        <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
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
        <script type="text/javascript" src="bootstrap/javascript/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD3B_3dr1ARh0iERVRNTl7WbkEJM4GmwMg"></script>
        <script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/tags/markerwithlabel/1.1.9/src/markerwithlabel.js"></script>
        <script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/infobubble/src/infobubble.js"></script>

        <style>
            #map_canvas {
                width: 100%;
                height: 575px;
                background-color: white;
                border: solid;
            }
            .labels {
                color: black;
                background-color: ivory;
                font-family: "Verdana", "Lucida Grande", "Arial", "Sans-Serif";
                font-size: 11px;
                font-weight: bold;
                text-align: center;
                border: 1px solid white;
                white-space: nowrap;
            }
        </style>
    </head>
    <%
        HttpSession ses = request.getSession();
        if (null == ses.getAttribute("user")) {
            response.sendRedirect("index.jsp");
        } else {
    %>
    <body class="bg-navy layout-top-nav">
        <div class="wrapper">

            <%@include file="header.jsp" %>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        WELCOME<small>Grade 1 Entry Qualification Evaluation System</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home.jsp"><i class="fa fa-dashboard"></i> G1EQES</a></li>
                    </ol>
                </section>

                <hr>

                <!-- Main content -->
                <section class="content">

                    <div class="row">
                        <div class="col-md-12">

                            <%
                                if (request.getParameter("msg") != null) {
                                    if (request.getParameter("msg").equals("error")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    Oops! Something went wrong. Please try again.
                                </div>
                            </div>
                            <%
                            } else if (request.getParameter("msg").equals("errorbackup")) {
                            %>
                            <div class="pad margin no-print">
                                <div class="callout callout-danger" style="margin-bottom: 0!important;">												
                                    <h4><i class="fa fa-warning"></i> Warning:</h4>
                                    An error occurred when backing up the database. Please try again.
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                            <div class="box box-solid">
                                <div class="box-header with-border text-center">
                                    <img src="img/grade1.jpg" class="img-responsive center-block" width="30%"/>
                                </div><!-- /.box-header -->
                                <div class="box-body">

                                    <div class="row">
                                        <div class="col-lg-3 col-xs-3">
                                            <!-- small box -->
                                            <div class="small-box bg-aqua">
                                                <div class="inner">
                                                    <h3><%= Counter.getRegisteredAppCount()%></h3>
                                                    <p>Registered Applications</p>
                                                </div>
                                                <div class="icon">
                                                    <i class="fa fa-clipboard"></i>
                                                </div>
                                                <a href="#" class="small-box-footer">
                                                    More info <i class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            </div>
                                        </div><!-- ./col -->
                                        <div class="col-lg-3 col-xs-3">
                                            <!-- small box -->
                                            <div class="small-box bg-green">
                                                <div class="inner">
                                                    <h3><%= Counter.getSelectedAppCount()%></h3>
                                                    <p>Selected Applications</p>
                                                </div>
                                                <div class="icon">
                                                    <i class="ion ion-checkmark-circled"></i>
                                                </div>
                                                <a href="#" class="small-box-footer">
                                                    More info <i class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            </div>
                                        </div><!-- ./col -->
                                        <div class="col-lg-3 col-xs-3">
                                            <!-- small box -->
                                            <div class="small-box bg-yellow">
                                                <div class="inner">
                                                    <h3><%= Counter.getUserCount()%></h3>
                                                    <p>Users</p>
                                                </div>
                                                <div class="icon">
                                                    <i class="ion ion-person-stalker"></i>
                                                </div>
                                                <a href="#" class="small-box-footer">
                                                    More info <i class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            </div>
                                        </div><!-- ./col -->
                                        <div class="col-lg-3 col-xs-3">
                                            <!-- small box -->
                                            <div class="small-box bg-red">
                                                <div class="inner">
                                                    <h3><%= Counter.getSchoolCount()%></h3>
                                                    <p>Schools Islandwide</p>
                                                </div>
                                                <div class="icon">
                                                    <i class="ion ion-university"></i>
                                                </div>
                                                <a href="#" class="small-box-footer">
                                                    More info <i class="fa fa-arrow-circle-right"></i>
                                                </a>
                                            </div>
                                        </div><!-- ./col -->
                                    </div><!-- /.row -->

                                    <div class="row">
                                        <div class="container col-md-6">
                                            <div class="box box-solid box-info">
                                                <div class="box-header with-border">
                                                    <i class="fa fa-calendar"></i>
                                                    <h3 class="box-title">Calendar</h3>
                                                </div><!-- /.box-header -->
                                                <div class="box-body no-padding">
                                                    <!--The calendar -->
                                                    <div id="calendar" style="width: 100%">
                                                        <div class="datepicker datepicker-inline">
                                                            <div class="datepicker-days" style="display: block;">
                                                                <table class="table table-condensed">
                                                                    <thead>
                                                                        <tr>
                                                                            <th class="prev" style="visibility: visible;">«</th>
                                                                            <th colspan="5" class="datepicker-switch">January 2016</th>
                                                                            <th class="next" style="visibility: visible;">»</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th class="dow">Su</th><th class="dow">Mo</th>
                                                                            <th class="dow">Tu</th><th class="dow">We</th>
                                                                            <th class="dow">Th</th><th class="dow">Fr</th>
                                                                            <th class="dow">Sa</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="old day">27</td><td class="old day">28</td><td class="old day">29</td><td class="old day">30</td><td class="old day">31</td><td class="day">1</td><td class="day">2</td></tr><tr><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td></tr><tr><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td></tr><tr><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td></tr><tr><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td></tr><tr><td class="day">31</td><td class="new day">1</td><td class="new day">2</td><td class="new day">3</td><td class="new day">4</td><td class="new day">5</td><td class="new day">6</td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th colspan="7" class="today" style="display: none;">Today</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th colspan="7" class="clear" style="display: none;">Clear</th>
                                                                        </tr>
                                                                    </tfoot>
                                                                </table>
                                                            </div>
                                                            <div class="datepicker-months" style="display: none;">
                                                                <table class="table table-condensed">
                                                                    <thead>
                                                                        <tr>
                                                                            <th class="prev" style="visibility: visible;">«</th>
                                                                            <th colspan="5" class="datepicker-switch">2016</th>
                                                                            <th class="next" style="visibility: visible;">»</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th colspan="7" class="today" style="display: none;">Today</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th colspan="7" class="clear" style="display: none;">Clear</th>
                                                                        </tr>
                                                                    </tfoot>
                                                                </table>
                                                            </div>
                                                            <div class="datepicker-years" style="display: none;">
                                                                <table class="table table-condensed">
                                                                    <thead>
                                                                        <tr>
                                                                            <th class="prev" style="visibility: visible;">«</th>
                                                                            <th colspan="5" class="datepicker-switch">2010-2019</th>
                                                                            <th class="next" style="visibility: visible;">»</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan="7">
                                                                                <span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year new">2020</span></td>
                                                                        </tr>
                                                                    </tbody>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th colspan="7" class="today" style="display: none;">Today</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th colspan="7" class="clear" style="display: none;">Clear</th>
                                                                        </tr>
                                                                    </tfoot>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.box-body -->
                                            </div><!-- /.box -->

                                            <div class="box box-danger">
                                                <!-- form start -->
                                                <form action="saveDeadline" method="POST">

                                                    <div class="box-header with-border">
                                                        <h3 class="box-title">Grading Criteria</h3>
                                                    </div>

                                                    <div class="box-body">

                                                        <p>Children of residents in close proximity to the school. (50%)</p>
                                                        <dl class="dl-horizontal">
                                                            <dt>15 marks</dt>
                                                            <dd>More than 100 km</dd>
                                                            <dt>25 marks</dt>
                                                            <dd>From 99 km to 50 km</dd>
                                                            <dt>35 marks</dt>
                                                            <dd>From 49 km to 25 km</dd>
                                                            <dt>45 marks</dt>
                                                            <dd>Less than 25 km</dd>
                                                        </dl>

                                                        <p>Children of parents who are Past Pupils of the school & Brothers/sisters of students already studying in the school (50%)</p>
                                                        <dl class="dl-horizontal">
                                                            <dt>30 marks</dt>
                                                            <dd>Children of parents who are Past Pupils of the school</dd>
                                                            <dt>20 marks</dt>
                                                            <dd>Brothers /sisters of students already studying in the school</dd>
                                                        </dl>

                                                    </div>
                                                </form>
                                            </div><!-- /.box -->
                                        </div>

                                        <div class="container col-md-6">
                                            <nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 2px;">
                                                <div class="container-fluid">
                                                    <div class="collapse navbar-collapse">

                                                        <h4 class="navbar-text">Filter</h4>
                                                        <ul class="nav navbar-nav ">
                                                            <div class="form-group">
                                                                <form class="navbar-form navbar-left" role="search">
                                                                    <div class="form-group">
                                                                        <select id="selectDistrict" class="form-control">
                                                                            <option value="0" selected="">All Island</option>
                                                                        </select>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </nav>

                                            <div id="map_canvas" style="margin-bottom: 75px;"></div>
                                        </div>
                                    </div>

                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>

                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->

            <%@include file="footer.jsp" %>

        </div><!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->
        <script type="text/javascript">
            var districts = ["Ampara",
                "Anuradhapura",
                "Badulla",
                "Batticaloa",
                "Colombo",
                "Galle",
                "Gampaha",
                "Hambantota",
                "Jaffna",
                "Kalutara",
                "Kandy",
                "Kegalle",
                "Kilinochchi",
                "Kurunegala",
                "Mannar",
                "Matale",
                "Matara",
                "Moneragala",
                "Mullaitivu",
                "Nuwara Eliya",
                "Polonnaruwa",
                "Puttalam",
                "Ratnapura",
                "Trincomalee",
                "Vavuniya"
            ];
            var select = document.getElementById("selectDistrict");
            var options = districts;
            for (var i = 0; i < options.length; i++) {
                var opt = options[i];
                var el = document.createElement("option");
                el.textContent = opt;
                el.value = opt;
                select.appendChild(el);
            }

            var oriBounds;
            var infoBubble = new InfoBubble();
            var map = null;
            var bounds = new google.maps.LatLngBounds();
            var arrMarkers = [];

            function initialize() {
                var map_canvas = document.getElementById('map_canvas');
                var map_options = {center: new google.maps.LatLng(7.566715, 440.70282),
                    zoom: 1,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    zoomControlOptions: {style: google.maps.ZoomControlStyle.SMALL
                    }
                };
                map = new google.maps.Map(map_canvas, map_options);

                //iterate through marker data and assign values to variables
                var pos = new google.maps.LatLng("6.924988", "79.870666");
                var title = "Ananda College,Colombo";
                var category = "Colombo";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("7.486987", "80.359210");
                var title = "Maliyadeva College, Kurunegala";
                var category = "Kurunegala";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.052557", "80.204603");
                var title = "Richmond College, Galle";
                var category = "Kurunegala";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.910843", "79.882522");
                var title = "Devi Balika Vidyalaya, Colombo 8";
                var category = "Colombo";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.905055", "79.860865");
                var title = "Royal College, Colombo 7";
                var category = "Colombo";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("9.678746", "80.012455");
                var title = "Jaffna Hindu College";
                var category = "Jaffna";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.917611", "79.875528");
                var title = "D.S.Senanayeka College";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.910843", "79.882522");
                var title = "Devi Balika Vidyalaya, Colombo 08";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.913939", "79.868391");
                var title = "Musaeus College";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.050462", "80.214964");
                var title = "Mahinda College, Galle";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("6.918760", "79.874638");
                var title = "Rathnavali Balika Vidyalaya";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("7.289968", "80.647958");
                var title = "Dharmaraja College, Kandy";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("7.919192", "81.003067");
                var title = "Royal Central College, Polonnaruwa";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("7.571760", "79.799380");
                var title = "Ananda College, Chilaw";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("8.748905", "80.499689");
                var title = "Holy Family Balika Maha Vidyalaya, Wennappuwa";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                var pos = new google.maps.LatLng("7.340745", "79.844730");
                var title = "Vavuniya Tamil Madhya Maha Vidyalayam";
                var category = "";
                var new_marker = addMarker(pos, title, category);
                arrMarkers.push(new_marker);

                map.fitBounds(bounds);
                oriBounds = bounds;
            }

            //===================================WAAS==============================================
            document.getElementById("selectDistrict").onchange = function () {
                district = this.value;
                var map_canvas = document.getElementById('map_canvas');
                var map_options = {center: new google.maps.LatLng(7.566715, 440.70282),
                    zoom: 1,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    zoomControlOptions: {style: google.maps.ZoomControlStyle.SMALL
                    }
                };
                map = new google.maps.Map(map_canvas, map_options);
                var LatLngList = new Array();
                //iterate through marker data and assign values to variables
                for (i = 0; i < schoolGeoData.length; i++) {
                    var pos = new google.maps.LatLng(schoolGeoData[i].lat, schoolGeoData[i].lng);
                    var title = schoolGeoData[i].name;
                    var category = schoolGeoData[i].dist;
                    //                alert(district + " " + category);
                    if (district == 0 || district == category) {
                        LatLngList.push(pos);
                        var new_marker = addMarker(pos, title, category);
                        arrMarkers.push(new_marker);
                    }

                }
                bounds = null;
                bounds = new google.maps.LatLngBounds();
                for (var i = 0, LtLgLen = LatLngList.length; i < LtLgLen; i++) {                 //  And increase the bounds to take this point
                    bounds.extend(LatLngList[i]);
                }
                //if the second selection has no schools it will use the original bounds
                if (LatLngList.length == 0) {
                    map.fitBounds(oriBounds);
                } else {
                    map.fitBounds(bounds);
                }
            }
            //=====================================================================================
            var pinIcon = new google.maps.MarkerImage(
                    "http://www.google.com/mapfiles/marker.png",
                    null,
                    null,
                    null,
                    new google.maps.Size(15, 20)
                    );

            //create marker based on the variables
            function addMarker(pos, title, category) {
                var marker = new MarkerWithLabel({
                    map: map,
                    position: pos,
                    title: title,
                    //icon: pinIcon,
                    category: category,
                    labelContent: title,
                    labelAnchor: new google.maps.Point(22, 0),
                    labelClass: "labels", // the CSS class for the label
                    labelStyle: {opacity: 1}
                });

                bounds.extend(marker.getPosition());

                return marker;
            }
            google.maps.event.addDomListener(window, 'load', initialize);

        </script>
        <!-- jQuery 2.1.4 -->
        <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="plugins/jQueryUI/jquery-ui.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- DATA TABES SCRIPT -->
        <script src="plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
        <!-- datepicker -->
        <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
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
    </body>
    <%
        }
    %>
</html>