<%-- 
    Document   : systemadminstrator.jsp
    Created on : Dec 1, 2021, 12:09:39 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:25%">
  <h3 class="w3-bar-item">System Administrator Activities</h3>
  <a href="#" class="w3-bar-item w3-button">Register Patients</a>
  <a href="#" class="w3-bar-item w3-button">Register Health Administrator</a>
     <a href="#" class="w3-bar-item w3-button">Send Email</a>
  
  <a href="RegisterVaccineServlet" class="w3-bar-item w3-button">Register Vaccines</a>
  <a href="#" class="w3-bar-item w3-button">Distribute Vaccines</a>
     <a href="#" class="w3-bar-item w3-button">Generate Reports</a>
       <a href="#" class="w3-bar-item w3-button">Generate Certificates</a>
              <a href="#" class="w3-bar-item w3-button">Vaccine Status</a>
     


</div>

<!-- Page Content -->
<div style="margin-left:25%">
    
    

<div class="w3-container w3-teal">
    <style>
        .header{
            display: flex;
            align-items: center;
            justify-content: space-between
        }
        
    </style>
    <div class="header">
        <h1>
        <%   
  String name = (String)session.getAttribute("name"); 

out.print("Welcome "+name);  
  
 
  

  
%>  
    </h1>
    
    <h3>LogOut</h3>
    
        
    </div>
    
</div>

<div class="w3-container">
<h2>System admin  Side bar</h2>

</div>

</div>
    </body>
</html>
