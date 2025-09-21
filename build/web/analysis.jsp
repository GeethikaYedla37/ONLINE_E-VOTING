<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String category = request.getParameter("category"); 
    
    try{
Connection con=databasecon.getconnection();

PreparedStatement pst=con.prepareStatement("SELECT Candidate_Name, count(*) FROM castedvotes where Category = '"+category+"' and Analyzed='No' GROUP BY Candidate_Name");    
	ResultSet rs=pst.executeQuery();
        int count=0;
        int i=0;
        String candidate="null";
        while (rs.next()){
        count=rs.getInt(2);
        candidate=rs.getString(1);
        
    PreparedStatement ps=con.prepareStatement("insert into analyzed values(?,?,?)");

    ps.setString(1,candidate);
    ps.setInt(2,count);
    ps.setString(3,category);
        
     i=ps.executeUpdate();
        }
    if(i>0)
    {
    PreparedStatement ps1=con.prepareStatement("update  castedvotes set Analyzed = 'Yes' where Category = '"+category+"'");
    ps1.executeUpdate();
    response.sendRedirect("analyze.jsp?m2=Successful");
    }
    else{
    response.sendRedirect("analyze.jsp?m1=Failed");    
    }
    %>
    <%
     
    }
    catch(Exception e)
    {
        response.sendRedirect("analyze.jsp?m3=Failed");
            out.println(e.getMessage());
    }
    %>