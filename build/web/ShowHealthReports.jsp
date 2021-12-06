<%-- 
    Document   : ShowHealthReports
    Created on : Dec 6, 2021, 11:15:19 AM
    Author     : user
--%>






<%-- 
    Document   : healthAdministrator
    Created on : Dec 1, 2021, 12:27:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
      
        
        <jsp:include page="includes/healthadmin.jsp" /> 
        
        <%@taglib  uri="/WEB-INF/tlds/ShowPatientTld" prefix="showreports" %>
        
        

<!-- Page Content -->
<div style="margin-left:25%">
    


<div class="w3-container">
    
    <table class="table mytable thead-dark">
  <thead >
    <tr>
      <th >Health Center ID</th>
      <th >Health Center Name</th>
      <th>Total Patients</th>
      <th>Total Dozes</th>
      <th >Remaining Dozes</th>
    </tr>
  </thead>
  <tbody>
      
<showreports:ShowHealthReportsHandler table="healthcenters" values="am here"></showreports:ShowHealthReportsHandler>
  </tbody>

                
            </table>

    

</div>

</div>
    </body>
</html>




























