<%-- 
    Document   : newuser
    Created on : 2 Oct, 2019, 7:54:46 PM
    Author     : prachi gupta
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String ss=request.getParameter("t1");
       
       String ss1=request.getParameter("t2");
       
       
       
       Connection con;
       try
       {
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           con=DriverManager.getConnection("jdbc:odbc:gk");
           
          PreparedStatement pst= con.prepareStatement("Insert into login values(?,?)");
         pst.setString(1, ss);
         pst.setString(2, ss1);
          
         pst.executeUpdate();
           pst.close();
       
       }catch(Exception e)
          
           
       {
       out.print(e);
       }
       
       %>
    </body>
</html>
