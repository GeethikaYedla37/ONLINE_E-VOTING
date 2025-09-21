<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    session.setAttribute("student",username);
           
    
    String password = request.getParameter("password");
    System.out.println(password);
    
    try{
      
		
	Connection con = databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from student where username ='"+username+"' and password='"+password+"'");
        if(rs.next()){
            ResultSet rs1 = st.executeQuery("select * from student where username ='"+username+"' and password='"+password+"' and status='Activated'");
        
       if(rs1.next())
        {
            String  name = rs1.getString(1);
		   session.setAttribute("sname",name);
		   System.out.println("student:"+name);
                   response.sendRedirect("studenthome.jsp?msg=Success");
        }
       else{
       response.sendRedirect("studentlogin.jsp?msg2=LoginFail");
       }
        }
       else 
        {
            response.sendRedirect("studentlogin.jsp?msg1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in studentlogin.jsp"+e.getMessage());
    }
%>



