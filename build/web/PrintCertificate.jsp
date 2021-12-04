<%-- 
    Document   : PrintCertificate
    Created on : Dec 4, 2021, 7:02:40 PM
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
              <%@ taglib uri="/WEB-INF/tlds/GetCovidInfo" prefix="Print" %>
        <% 
            String id = request.getParameter("name");
            
        %>
        <Print:printCertificate table="patients" values="<%= id %>"></Print:printCertificate>
    </body>
</html>
