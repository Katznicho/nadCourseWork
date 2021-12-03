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
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:25%">
  <h3 class="w3-bar-item">Health Administrator Activities</h3>
  <a href="#" class="w3-bar-item w3-button">Registers Health Centers</a>
  <a href="#" class="w3-bar-item w3-button">User activities</a>
     <a href="#" class="w3-bar-item w3-button">Updates Health Center Information</a>
  
  <a href="#" class="w3-bar-item w3-button">Provides necessary Reports</a>
  
     


</div>

<!-- Page Content -->
<div style="margin-left:25%">
    <style>
        .header{
            display: flex;
            align-items: center;
            justify-content: space-between
        }
        
    </style>

<div class="w3-container w3-teal">
  <div class="header">
        <h1>
        <%   
  String name = (String)session.getAttribute("name"); 

out.print("Welcome "+name);  
  
 
  

  
%>  
    </h1>
    
    <h3 style="cursor:pointer; text-decoration: none;">
        <a href="/NadCourseWork">LogOut</a>
    </h3>
    
        
    </div>
</div>

<div class="w3-container">
<h2>System admin  Side bar</h2>

</div>

</div>
    </body>
</html>
