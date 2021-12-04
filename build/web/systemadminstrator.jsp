<%-- 
    Document   : systemadminstrator.jsp
    Created on : Dec 1, 2021, 12:09:39 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.db.connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <style>
  .containerCard{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    margin-left: 150px;
    
  }
  .mycard{
    box-shadow: rgba(6, 60, 114, 0.2) 0px 8px 24px;
    width: 250px;
    height: 150px;
    padding: 10px;
    margin:10px;
    background-color: #1c478e;
    border-radius: 10px;
   cursor:pointer;
  }
  .newDiv{
    align-items: center;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .total{
    color: white;
  }
  .remove{
      text-decoration: none;
  }

</style>
        
    </head>
    <body>


<jsp:include page="includes/systemadmin.jsp" />
  
<div class="w3-container">
    


           
           
           
           
           
           
           
                 <%@ taglib uri="/WEB-INF/tlds/GetCovidInfo" prefix="CovidInfo" %>

                   
                   
                   <div class='containerCard'>
                       <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>Total Patients</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                      <CovidInfo:GetCovidPatientsHandler/>
                                    
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div><!-- comment -->
                       
                       <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>System Administrators</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                <CovidInfo:GetHealthAdministratorHandler/>
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div>
                                                       <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>System Administrators</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                    <CovidInfo:GetSystemAdminHandler/>
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div>
                       
                   </div>
                                
                                <!--<!-- comment -->
                                <div class="containerCard">
                                         <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>Total Bookings</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                    <CovidInfo:GetBookingHandler/>
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div>
                                                <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>Health Centres</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                    <CovidInfo:HealthCentreHandler/>
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div>
                                    <a href="ShowVaccines.jsp" class="remove" 
                                       style="text-decoration:none;">
                                                                  <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>Total Vaccine Types</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                    <CovidInfo:GetVaccineTYypesHandler/>
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div>
                                           
                                    </a>
                             
                                    
                                    
                                    
                                    
                                </div>
                                <!<!-- comment -->
                                
                                <div class="containerCard">
                                    <a href="ShowVaccines.jsp" class="remove" 
                                       style="text-decoration:none;"
                                       
                                       >
                                                                  <div class="mycard">
                            <div class='newDiv'>
             <h5 class='total'>Total Vaccine Dozens</h5>
             </div>
                            <div class='newDiv'>
                                <h1 class="total">
                                    <CovidInfo:GetTotalDozesHandler/>
                                    
                                </h1>

             <h1 class='total'>
             
             </h1>
             </div>
                       </div>
                                        
                                    </a>
                             
                                    
                                </div>
                                
                                <!<!-- comment -->
                                <!--comment-->



    </body>
</html>
