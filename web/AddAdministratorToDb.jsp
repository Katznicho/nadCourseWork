<%-- 
    Document   : AddAdministratorToDb
    Created on : Dec 3, 2021, 3:50:08 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%@taglib uri= "/WEB-INF/tlds/RegisterHealthCenterTld" prefix="registerhealthcentertld" %>%>
        
        <% String name = request.getParameter("healthCenterName"); %>
           <% String patients = request.getParameter("totalPatients"); 
out.println(patients);
           %>
    </body>
</html>
