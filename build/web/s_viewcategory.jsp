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
            background-image: none;
            border: none;
            box-shadow: none;
            left:45%;
        }
        div.login .input-group select{
            padding:0;
        }
       .btn-hover {
    padding:10px 30px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: -1px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 4px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}
        </style>
</head>

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
                                <li class="active"><a href="s_viewcategory.jsp">Analyze Votes</a></li>
                                <li><a href="adminlogin.jsp">Logout</a></li>
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
    

    	//String dancer = session.getAttribute("name").toString();					
        Connection con = databasecon.getconnection();
        PreparedStatement pst=con.prepareStatement("select distinct category from candidates");    
        
	ResultSet rs=pst.executeQuery();
        %>
    <!-- Header Area End -->
    <section class="contact--us-area section-padding-100-0">
        <div class="container" data-wow-delay="200ms">
            <br><br>
            <div class="login wow fadeInRight" style="width:500px">
                <center>
                    <form action="analyze.jsp" style="width: 50%">
                    <div class="input-group">
                                <select name="category" id="" required>
                                    <option value="" selected=""></option>
                                    
<%
while(rs.next()){      
%>
                                    <option value="<%=rs.getString("category")%>" ><%=rs.getString("category")%></option>
                                    <%}%>
                                </select>
                                <span>Select Category</span>
                            </div>
                    <center>
                     <button class="btn-hover color-6">SUBMIT</button>
                    </center>
                </form>
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
</body>

</html>