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
    <style>
       .btn-hover {
    padding:5px 15px;
    font-size: 10px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: -1px;
    margin-right: -11cm;
    text-align:right;
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
        
    <!-- Header Area End -->
    <section class="contact--us-area section-padding-100-0">
        <div class="container" data-wow-delay="100ms">
            <br>
            <div class="container wow fadeInUp">
    

    <!-- Our Blog Area Start -->
    <div class="our-blog-area section-padding-100">
        <div class="container" id="display">
                        
                <h4 align="left"></h4>
                <br>
                <div class="col-12">
                     <%
    String cname = request.getParameter("cname");
    String info = request.getParameter("info"); 
    String photo = request.getParameter("photo"); %>
                    
                    <div class="our-client-area mt-100 wow fadeInUp" data-wow-delay="100ms">
                            <!-- Single client Slider -->
                            <center>
                            <div class="single-client-content" style="border:5px solid tomato;width:500px;box-shadow: 0 0 15px tomato">
                                <!-- Single client Text --
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<%=photo%>" alt="" style="border-radius: 10px">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info" align="center">
                                             <br>
                                            <h3><%=cname%></h3>
                                        </div>
                                        <div class="single-client-text">
                                            <p style="color:blue;font-weight: 500"><%=info%></p>
                                    <!-- Single client Thumb and info -->
                                    </div>
                                        <a onclick="goBack()" style="color:white"><button class="btn-hover color-7">Back</button></a>
                            </center>
                                </div>
                                <!-- Single client Icon -->
                                <div class="client-icon">
                                    <i class="zmdi zmdi-quote"></i>
                                </div>
                            </div>
                    </div>
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
    <script>
 function goBack() {
  window.history.back();
} 
</script>
</body>

</html>
