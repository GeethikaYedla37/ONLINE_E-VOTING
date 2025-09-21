<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String name = request.getParameter("name");
    String info = request.getParameter("info"); 
    String branch = request.getParameter("branch"); 
    String category = request.getParameter("category"); 
    String file = request.getParameter("file"); 
    try{
Connection con=databasecon.getconnection();
    PreparedStatement ps=con.prepareStatement("insert into candidates values(?,?,?,?,?)");

    ps.setString(1,name);
    ps.setString(2,info);
    ps.setString(3,branch);
    ps.setString(4,category);
    ps.setString(5,file);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addcand.jsp?msg=Enrolled");
    }
    else{
    response.sendRedirect("addcand.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>