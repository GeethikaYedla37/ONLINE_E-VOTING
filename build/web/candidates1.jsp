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
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">

</head>
        <%
            if (request.getParameter("m2") != null) {%>
        <script>alert('Vote Casted Successfully...');</script>
        <%}%>
        <%
            if (request.getParameter("m4") != null) {%>
        <script>alert('You Have Already Casted Vote For This Category...');</script>
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
                                <li><a href="studenthome.jsp">Home</a></li>
                                <li class="active"><a href="candidates.jsp">View Candidates</a></li>
                                <li><a href="viewresult1.jsp">View Results</a></li>
                                <li><a href="studentlogin.jsp">Logout</a></li>
                            </ul>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    
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
        PreparedStatement pst=con.prepareStatement("select * from candidates where category='"+category+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
    
      
    <!-- Header Area End -->
    <section class="contact--us-area section-padding-100-0">
        <div class="container" data-wow-delay="100ms">
            <br>
            <div class="container wow fadeInUp">
                    <h2 align="cenetr"><u>Candidates</u></h2>
                    <!--<h5 align="right">Voting Ends In: <span id="demo" align="right" style="color:red"></span></h5>-->
    

    <!-- Our Blog Area Start -->
    <div class="our-blog-area section-padding-100">
        <!--<h1 id="show" style="display:none;margin-top: 3.8cm">Voting Time <span style="color:red">EXPIRED</span></h1>-->
        <div class="container" id="display">
                        
                <h4 align="left"></h4>
                <br>
            <div class="row">
                <!-- Single Blog Area -->
                
                
                <%
while(rs.next())  {      
%>
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="800ms">
                       
                        
                        <!-- Single Blog Thumb -->
                        <div class="single-blog-thumb">
                            <img src="<%=rs.getString(5)%>" alt="" style="height:192px;width:317px">
                        </div>
                        <div class="single-blog-text text-center">
                            <a class="blog-title" href="candidateinfo.jsp?cname=<%=rs.getString(1)%>&photo=<%=rs.getString(5)%>&info=<%=rs.getString(2)%>"><%=rs.getString(1)%></a>
                            <!-- Post Meta -->
                        </div>
                        <div class="blog-btn">
                            <a href="castvote.jsp?cname=<%=rs.getString(1)%>&category=<%=rs.getString(4)%>"><b>CAST</b></a>
                        </div>
                    </div>
                </div>

<%}%>
            </div>
            </div>
        </section>           
            
    <!-- About Us And Countdown Area End -->

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
</body>

</html>