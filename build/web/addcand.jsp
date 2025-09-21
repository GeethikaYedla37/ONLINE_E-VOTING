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
            top:40%;
            left:45%;
        }
        </style>
</head>
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Candidate Enrolled Successfully...');</script>
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
                                <li class="active"><a href="addcand.jsp">Enroll Candidates</a></li>
                                <li><a href="viewstud.jsp">View Students</a></li>
                                <li><a href="s_viewcategory.jsp">Analyze Votes</a></li>
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

    <section class="contact--us-area section-padding-100-0">
        <div class="container" data-wow-delay="200ms">
                <div class="row">

            <!--Registration Form-->
<div class="login wow fadeInRight" style="width: 500px;">
        <h2><u>Enroll Candidates</u></h2>
        <form action="Upload" enctype="multipart/form-data" method="post">
            <center>
            <table>
                <tr>
                    <td>
                        <div class="input-group"  style="padding-right: 10px;">
                            <input type="text" name="name" required="">
                            <span>Name</span>
                        </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <textarea name="info" id="" cols="30" rows="10" required></textarea>
                            <span>Candidate Info</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="input-group" style="padding-right: 10px;">
                            <select name="branch" id="" required>
                                <option value="" style="display: hidden"></option>
                                <option value="CSE">CSE</option>
                                <option value="IT">IT</option>
                                <option value="EEE">EEE</option>
                                <option value="CE">CE</option>
                                <option value="ME">ME</option>
                                <option value="AE">AE</option>
                            </select>
                            <span>Select Branch</span>
                        </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <select name="category" id="" required>
                                <option value="" style="display: hidden"></option>
                                <option value="Class Representative">Class Representative</option>
                                <option value="Student President">Student President</option>
                                <optgroup label="Affinity Club">
                                <option value="ECO Friendly">ECO Friendly</option>
                                <option value="Cultural Club">Cultural Club</option>
                                </optgroup>
                            </select>
                            <span>Select Category</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="file" id="customFile" required>
                            <label class="custom-file-label" for="customFile" style="text-align: left">Candidate Photo</label>
                          </div>
                    </td>
                </tr>
            </table>
        </center>
            <center>
                            <button class="btn-hover color-8">ENROLL</button>
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
    <script>
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function() {
          var fileName = $(this).val().split("\\").pop();
          $(this).siblings(".custom-file-label").addClass("selected").jsp(fileName);
        });
        </script>
</body>

</html>