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
    left:45%;
    top:40%;
}
</style>
</head>
        <%
            if (request.getParameter("m3") != null) {%>
        <script>alert('Email Id Is already Registered...\n Try with Different Mail id...');</script>
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
                                <li><a href="index.html">Home</a></li>
                                <li><a href="adminlogin.jsp">Admin</a></li>
                                <li class="active"><a href="studentlogin.jsp">Student</a></li>
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
    <div class="login wow fadeInRight" style="width:500px">
            <h2><u>Student &nbsp;&nbsp;Registration</u></h2>
            <form action="studentregact.jsp">
                <table>
                    <tr>
                        <td style="padding-right: 10px;">
                            <div class="input-group">
                                <input type="text" name="name" required="">
                                <span>Name</span>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <input type="password" name="password" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                                <span>Password</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-right: 10px;">
                            <div class="input-group">
                                <input type="text" name="email" required="" maxlength="10">
                                <span>Roll Number</span>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <select name="branch" id="" required>
                                    <option value="" style="display: hidden"></option>
                                    <option value="CSE">CSE</option>
                                    <option value="IT">IT</option>
                                    <option value="EEE">EEE</option>
                                    <option value="CE">CE</option>
                                    <option value="ME">ME</option>
                                    <option value="AE">AE</option>
                                </select>
                                <span>Branch</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    <td style="padding-right: 10px;">
                        <div class="input-group">
                            <select name="year" id="" required>
                                <option value="" style="display: hidden"></option>
                                <option value="1">1st Year</option>
                                <option value="2">2nd Year</option>
                                <option value="3">3rd Year</option>
                                <option value="4">4th Year</option>
                            </select>
                            <span>Year</span>
                        </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <select name="sem" id="" required>
                                <option value="" style="display: hidden"></option>
                                <option value="1">1st Semester</option>
                                <option value="2">2nd Semester</option>
                            </select>
                            <span>Semester</span>
                        </div>
                    </td>
                </tr>
                </table>
                <center>
                                <button class="btn-hover color-6">REGISTER</button>
            </center>

            </form>
            
        </div>
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