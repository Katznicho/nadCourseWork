<%-- 
    Document   : AddPatientToDb
    Created on : Dec 4, 2021, 4:43:12 PM
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

        <%@taglib  uri="/WEB-INF/tlds/RegisterPatient" prefix="patient" %>

        <% String patientName = request.getParameter("name"); %>
        <% String NIN = request.getParameter("nin"); %>
        <% String healthCentreId = request.getParameter("healthCentreId");%>
        <% String batchNumber = request.getParameter("batchNumber");%>
        <% String days = request.getParameter("days");%>
        <%=patientName + ',' + NIN + ',' + batchNumber + ',' + healthCentreId%>
        
        
        <patient:RegisterPatientsHandler  tables="patients" values="<%=patientName + ',' + NIN +','+healthCentreId + ','+ batchNumber+','+days  %>" />

        <%--<registerpatient:RegisterPatientsHandler table="patients" values="<%=patientName %>"></registerpatient:RegisterPatientsHandler>--%>



    </body>
</html>
