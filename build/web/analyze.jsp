<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Evoting</title>

    <!-- Favicon -->
    <link rel="icon" href="./img/core-img/favicon.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <style>
        div.login{
            top:25%;
        }
        </style>
</head>
        <%
            if (request.getParameter("m2") != null) {%>
        <script>alert('Analysis Completed...');</script>
        <%}%>
                <%
            if (request.getParameter("m3") != null) {%>
        <script>alert('Analysis Already Completed...');</script>
        <%}%>
                        <%
            if (request.getParameter("m1") != null) {%>
        <script>alert('Analysis Already Completed...');</script>
        <%}%>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->

    <!-- Header Area Start -->
    <header class="header-area">
        <div class="classy-nav-container breakpoint-off">
            <div class="container">
                <!-- Classy Menu -->
                <nav class="classy-navbar justify-content-between" id="conferNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="./index.html"><img src="./img/core-img/logo.jpg" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">
                        <!-- Menu Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>
                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul id="nav">
                                <li><a href="adminhome.jsp">Home</a></li>
                                <li><a href="addcand.jsp">Enroll Candidates</a></li>
                                <li><a href="viewstud.jsp">View Students</a></li>
                                <li class="active"><a href="analyze.jsp">Analyze Votes</a></li>
                                <li><a href="adminlogin.jsp">Logout</a></li>
                            </ul>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    
    
                 <%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<br><br>
<center>
   <%
    
        String category = request.getParameter("category");
    	//String dancer = session.getAttribute("name").toString();					
        Connection con = databasecon.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from castedvotes where Category='"+category+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
    <section class="contact--us-area section-padding-100-0">
        <div class="container" data-wow-delay="200ms">
            <br><br>
            <div class="container wow fadeInDown">
                    <center>
                        <h2><u>Analyze</u></h2>
                        <br>
                    </center>                
                        <table class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>Student Name</th>
                              <th>Candidate Name</th>
                              <th>Voting Status</th>
                            </tr>
                          </thead>
                          <tbody>
<%
while(rs.next()){      
%>
                            <tr>
                              <td><%=rs.getString(1)%></td>
                              <td><%=rs.getString(2)%></td>
                              <td><%=rs.getString(5)%></td>
                            </tr>
                             <%}%>
                          </tbody>
                        </table>
                        <center>
                                <button class="btn-hover color-3"><a href="analysis.jsp?category=<%=category%>" style="text-decoration-style: none; color:whitesmoke" >LET'S ANALYZE</a></button>
                        </center>
                      </div>

        </div>
</section>
<br>
    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="js/confer.bundle.js"></script>
    <!-- Active -->
    <script src="js/default-assets/active.js"></script>
    <script>
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function() {
          var fileName = $(this).val().split("\\").pop();
          $(this).siblings(".custom-file-label").addClass("selected").jsp(fileName);
        });
        
        </script>
</body>

</html>