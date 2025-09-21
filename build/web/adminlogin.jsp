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

</head>

        <%
            if (request.getParameter("m2") != null) {%>
        <script>alert('Invalid Username or Password!...');</script>
        <%}%>
<body>
        <script>
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    };
</script>
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
                                <li><a href="index.html">Home</a></li>
                                <li class="active"><a href="adminlogin.jsp">Admin</a></li>
                                <li><a href="studentlogin.jsp">Student</a></li>
                                <li><a href="aboutus.jsp">About Us</a></li>
                            </ul>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Area End -->
    <!-- Contact Us Area Start -->
    <section class="contact--us-area section-padding-100-0">
            <div class="container" data-wow-delay="200ms">
                    <div class="row">

                <!--Registration Form-->
    <div class="login wow fadeInLeft" style="max-width: 400px;">
            <h2><u>Admin Login</u></h2>
            <form action="adminloginact.jsp">
                <center>
                <table>
                    <tr>
                        <td>
                            <div class="input-group">
                                <input type="text" name="username" required="">
                                <span>Username</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="input-group">
                                <input type="password" name="password" required="">
                                <span>Password</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </center>
                <center>
                                <button class="btn-hover color-7">LOGIN</button>
            </center>

            </form>
        </div>
</div>
            </div>
    </section>


    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="js/jquery.min.js"></script>
    <!-- All Plugins -->
    <script src="js/confer.bundle.js"></script>
    <!-- Active -->
    <script src="js/default-assets/active.js"></script>

</body>

</html>