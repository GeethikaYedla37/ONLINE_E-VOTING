<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String username = session.getAttribute("student").toString();
    String cname = request.getParameter("cname"); 
    String category = request.getParameter("category");
    String name = session.getAttribute("sname").toString(); 
    String status ="Casted";
    String Analyzed ="No";
    
    try{
Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from castedvotes where Student_Name='"+name+"' and Category='"+category+"'");
    if(rs.next()){
        response.sendRedirect("candidates.jsp?m4=Failed");
    }
    else{
    PreparedStatement ps=con.prepareStatement("insert into castedvotes values(?,?,?,?,?,?)");

    ps.setString(1,name);
    ps.setString(2,cname);
    ps.setString(3,username);
    ps.setString(4,category);
    ps.setString(5,status);
     ps.setString(6,Analyzed);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("candidates.jsp?m2=Successful");
    }
    else{
    response.sendRedirect("candidates.jsp?m1=Failed");    
    }
    %>
    <%
    }}

    catch(Exception e)
    {
       out.println(e.getMessage());
//        response.sendRedirect("candidates.jsp?m3=Failed");          
    }
    %>