
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String email = request.getParameter("smail");  
    try{
        Connection con=databasecon.getconnection();
    PreparedStatement ps=con.prepareStatement("update  student set status = 'Activated' where username = '"+email+"'");
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("viewstud.jsp?m1=Activated");
    }
    else{
    response.sendRedirect("viewstud.jsp?m2=Failed");    
    }
    
    
        
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>