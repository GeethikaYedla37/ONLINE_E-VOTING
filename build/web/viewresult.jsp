<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
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
#chart { 
    background: rgba(255, 0, 0, .1);
    height: 500px;
  }
  </style>
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->
   <%
    

    	//String dancer = session.getAttribute("name").toString();
       String category=request.getParameter("category");
        Connection con = databasecon.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from analyzed where Category='"+category+"'");
	ResultSet rs=pst.executeQuery();
        %>
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
                                <li><a href="candidates.jsp">View Candidates</a></li>
                                <li class="active"><a href="viewresult1.jsp">View Results</a></li>
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
        <div class="container" data-wow-delay="1000ms">
            <br>
                                <div hidden>
                        <script>
                            var a=[];
                                var i=0;
                        </script>
<%
while(rs.next()){      
%>
<script>
    a[i]=["<%=rs.getString(1)%>",<%=rs.getString(2)%>];  
    i++;
    
</script>
                            <%}%>
                    </div>
            <div class="container wow pulse">
                <div class="container">
                    <br>
                    <center>
                        <h2><u>Voting Percentage(%)</u></h2>
                    </center>
                        <h1 style="color:tomato;float: right;display:none" id="tie">It's A TIE</h1>
                        <h3 style="color:tomato;margin-left: -3cm;display:none" id="won"></h3>
                    <center>
                        <div id="chart"></div>
                </center>
                </div>

        </section>
    <!-- About Us And Countdown Area End -->

    <!-- **** All JS Files ***** -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <!--<script src="js/canvas.js"></script>-->
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
        
/**
 * Selector for chart element.
 */
 var chartSelector = '#chart';
/**
 * Selector used to get label elements inside the rendered chart.
 * Your mileage may vary if you configure your chart different than
 * me. Use Firebug or Developer Tools to step through the SVG and
 * determine your label selector.
 */
var labelSelector = '> g:eq(1) g text';

/**
 * This is our data. For simplicity sake, doing inline and not AJAX.
 */
var data=[];
for(var j=0;j<i;j++){
  var c= a[j];
  data[j]=c;
}


//To FindOut Who Won Starts..................
let players = data;

const getHighestNum = ()=>{
  let highNum=0;
  players.forEach(player=>{
   if(player[1]>highNum){
    highNum=player[1];
  }
  })
  return highNum;
}

let findPlayers=players.filter(player => player[1] === getHighestNum());
if(findPlayers.length>1){
document.getElementById('tie').style.display="block";
}
else{
    const A=findPlayers[0][0];
  document.getElementById('won').style.display="block";
  document.getElementById('won').innerHTML=""+A+" Has Won The Election.";
}
//To FindOut Who Won Ends..................


// Load Google Charts 
google.load('visualization', '1.1', { packages: ['corechart', 'line'] });

// Callback when API is ready
google.setOnLoadCallback(function() {
 
  /*
   * Setup the data table with your data. 
   */
  var table = new google.visualization.DataTable({
    cols : [
      { id : 'name', label : 'Name', type : 'string' },
      { id : 'value', label : 'Value', type : 'number' }
    ]
  });
  
  // Add data to the table
  table.addRows( data );
  
  // Google Charts needs a raw element. I'm using jQuery to get the chart
  // Container, then indexing into it to get the raw element.
  var chartContainer = $(chartSelector)[0];
  
  // Create the Google Pie Chart
  var chart = new google.visualization.PieChart(chartContainer);
  
  // Draw the chart.
  chart.draw(table, { title : '' });
  
  /*
   * This is the meat and potatoes of the operation. We really require
   * two things: #1) A selector that will get us a list of labels in the
   * legend, and #2) The DataTable powering the chart.  We'll cycle
   * through the labels, and use their index to lookup their value.
   * If you have some higher-level math you need to do to display a
   * different value, you can just replace my logic to get the count
   * with your's.
   */
  
  // The <svg/> element rendered by Google Charts
  var svg = $('svg', chartContainer );
  
  /*
   * Step through all the labels in the legend.
   */
//   $(labelSelector, svg).each(function (i, v) {
  
//     /*
//      * I'm retrieving the value of the second column in my data table,
//      * which contains the number that I want to display. If your logic
//      * is more complicated, change this line to calculate a new total.
//      */
//     var total = table.getValue(i, 1);
    
//     // The new label text.
//     var newLabel = $(this).text() + '(' + total + ')';
	
//     // Update the label text.
//     $(this).text( newLabel );
//   });
  
});

    </script>

</body>

</html>