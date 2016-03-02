<%-- 
    Document   : header
    Created on : Dec 15, 2015, 11:29:45 AM
    Author     : Chanaka
--%>

<%@page import="Controller.Counter"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Main Header -->
<header class="main-header" style="z-index: 10;">

    <%
        User u = (User) session.getAttribute("user");
    %>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <ul class="nav navbar-nav">
            <li class="dropdown messages-menu">
                <img class="center-block img-responsive" src="img/logo.png" style="height: 50px;"/>
            </li>
        </ul>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="home.jsp"><i class="fa fa-home"></i> Home</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-alt"></i> Application <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <% if (u.getUserLevel().equals("Parent")) { %>
                        <li><a href="registerChild.jsp">Register your child</a></li>
                        <li><a href="registerApplication.jsp">Register an application</a></li>
                        <li><a href="viewApplicationParent.jsp">View submitted applications</a></li>
                            <% } else if (u.getUserLevel().equals("Principal")) { %>
                        <li><a href="viewApplicationPrincipal.jsp">View submitted applications</a></li>
                            <% } else if (u.getUserLevel().equals("GramaNiladhari")) { %>
                        <li><a href="viewApplicationGrama.jsp">View submitted applications</a></li>
                            <% } else if (u.getUserLevel().equals("Admin")) { %>
                        <li><a href="viewApplicationMOE.jsp">View submitted applications</a></li>
                            <% } %>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-graduation-cap"></i> School <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="viewSchool.jsp">View list of schools</a></li>
                            <% if (u.getUserLevel().equals("Admin")) { %>
                        <li><a href="registerSchool.jsp">Register a new school</a></li>
                            <% } %>
                    </ul>
                </li>
                <li><a href="viewUser.jsp"><i class="fa fa-users"></i> Users</a></li>
                    <% if (u.getUserLevel().equals("Admin")) { %>
                <li><a href="adminPanel.jsp"><i class="fa fa-cog"></i> Admin Panel</a></li>
                    <% } %>
            </ul>
        </div>

        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                <%
                    if (u.getUserLevel().equals("Admin")) {
                        int count = Counter.getUnapprovedUserCount();
                %>
                <li class="dropdown notifications-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-warning"><%= count%></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have <%= count%> new users</li>
                        <li class="footer"><a href="viewUser.jsp"><code>View all</code></a></li>
                    </ul>
                </li>
                <% }%>
                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <% if (u.getUserLevel().equals("Admin")) {%>
                        <img src="img/gov.png" class="user-image" alt="User Image"/>
                        <% } else { %>
                        <img src="img/user.png" class="user-image" alt="User Image"/>
                        <% }%>
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">
                            <%= u.getFname() + " " + u.getLname()%>
                        </span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- The user image in the menu -->
                        <li class="user-header" style="height: 180px;">
                            <% if (u.getUserLevel().equals("Admin")) {%>
                            <img src="img/gov.png" class="img-thumbnail" alt="User Image" />
                            <% } else { %>
                            <img src="img/user.png" class="img-circle" alt="User Image" />
                            <% }%>
                            <p>
                                <%= u.getFname() + " " + u.getLname()%><br/>
                                <%= u.getUserLevel()%>
                                <small><%= u.getAddress()%></small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-right">
                                <a href="signOut" class="btn btn-danger btn-flat">Sign out</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>