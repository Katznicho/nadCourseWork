<%-- 
    Document   : AddUpdatedHealthCenterToDb
    Created on : Dec 5, 2021, 3:36:34 PM
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
      <%@taglib uri= "/WEB-INF/tlds/Update" prefix="updates" %>%>
        
        <% String name = request.getParameter("healthCenterName"); %>
           <% String patients = request.getParameter("totalPatients"); 
//out.println(patients);
           %>

           <updates:UpdateHandler                table="healthcentres"
               values="<%= name + ','+patients %>"></updates:UpdateHandler>        
    </body>
</html>
