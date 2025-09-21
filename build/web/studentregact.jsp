<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("email");
    String password = request.getParameter("password"); 
    String name = request.getParameter("name"); 
    String branch = request.getParameter("branch"); 
    String year = request.getParameter("year"); 
    String semester = request.getParameter("sem");
    String status ="Pending";
    
    try{
Connection con=databasecon.getconnection();
    PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?)");

    ps.setString(1,name);
    ps.setString(2,username);
    ps.setString(3,password);
    ps.setString(4,branch);
    ps.setString(5,year);
    ps.setString(6,semester);
    ps.setString(7,status);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("studentlogin.jsp?msg=Successful");
    }
    else{
    response.sendRedirect("studentreg.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
       out.println(e.getMessage());
        response.sendRedirect("studentreg.jsp?m3=Failed");          
    }
    %>