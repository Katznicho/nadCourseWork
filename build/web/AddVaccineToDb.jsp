<%-- 
    Document   : AddVaccineToDb
    Created on : Dec 2, 2021, 1:10:22 PM
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

                   <%@ taglib uri="/WEB-INF/tlds/VaccineOperationsTld" prefix="Vaccine" %>
                   
             
           <% String type = request.getParameter("name"); %>
           <% String totalNumber = request.getParameter("quantity"); %>
           
           
           
           <Vaccine:RegisterVaccineHandler table="vaccines" 
                     values="<%=type + ','+totalNumber %>">
                       
                   </Vaccine:RegisterVaccineHandler>
    </body>
</html>
