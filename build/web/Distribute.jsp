<%-- 
    Document   : Distribute
    Created on : Dec 5, 2021, 4:24:01 PM
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
        <title>Distribute</title>
    </head>
    <body>
        <%
             DBConnection Conn = new DBConnection();
         Connection newConn  = Conn.getConnection();
          Statement St = newConn.createStatement();

            int totalPatients = 0;
            int hospitalOnePatients = 0;
            int hospitalTwoPatients = 0;
            int hospitalThreePatients = 0;
            int hospitalFourPatients =0;
            int hospitalFivePatients =0;
             ResultSet centres  = St.executeQuery("select * from healthcentres ");
             
             //hospitalOnePatients = 
             while(centres.next()){
                
                 totalPatients  =+ Integer.parseInt(centres.getString("totalPatients"));
                 
             }
             out.println(totalPatients);
             
        %>
            <%
          String [] newValues =  request.getParameter("details").split(",");
      %>
    </body>
</html>
