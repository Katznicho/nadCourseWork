<%-- 
    Document   : totalAdmins
    Created on : Dec 3, 2021, 10:44:35 AM
    Author     : user
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.db.connection.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                DBConnection Conn = new DBConnection();
         Connection newConn  = Conn.getConnection();
         Statement St = newConn.createStatement();
            int totalAdmin = 0;
            ResultSet admin = St.executeQuery("select * from administrator");
             while(admin.next()){
             totalAdmin++;
 }
        %>
        <h1>Total Admin</h1>
    </body>
</html>
