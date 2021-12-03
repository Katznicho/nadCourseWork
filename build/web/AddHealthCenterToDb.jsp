<%-- 
    Document   : AddHealthCenterToDb
    Created on : 3 Dec 2021, 16:20:29
    Author     : Scentia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adds</title>
    </head>
    <body>
        
        <%@taglib uri= "/WEB-INF/tlds/RegisterHealthCenterTld" prefix="registerhealthcentertld" %>%>
        
        <% String name = request.getParameter("healthCenterName"); %>
           <% String patients = request.getParameter("totalPatients"); 
out.println(patients);
           %>
           <registerhealthcentertld:RegisterHealthCenterHandler table="healthcentres"
               values="<%= name + ','+patients %>"></registerhealthcentertld:RegisterHealthCenterHandler>
           
        
    </body>
</html>
