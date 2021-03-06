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
            .mycard1{
                box-shadow: rgba(6, 60, 114, 0.2) 0px 8px 24px;
                width: 250px;
                height: 150px;
                padding: 10px;
                margin:10px;
                background-color: #1c478e;
                border-radius: 10px;
                cursor:pointer;
            }
            .newDiv1{
                align-items: center;
                display: flex;
                align-items: center;
                justify-content:space-around;
            }

        </style>

    </head>
    <body>


        <jsp:include page="includes/systemadmin.jsp" />

        <div class="w3-container">





            <%
                String totalPopulation = "500";
            %>




            <%@ taglib uri="/WEB-INF/tlds/GetCovidInfo" prefix="CovidInfo" %>

            <div class="containerCard">

                <div class="mycard1">
                    <div class="newDiv1">
                        <h4 class="total">Total Population</h4>
                        <h4 class="total"> <%= totalPopulation%></h4>
                    </div>
                    <div class="newDiv1">
                        <h4 class="total">Total Vaccinated</h4>
                        <h4 class="total">     <CovidInfo:GetCovidPatientsHandler/></h4>
                    </div>
                </div>

                <div class="mycard1">
                    <div class="newDiv1">
                        <h4 class="total">Percentage Vaccinated</h4>
                        <h4 class="total">  
                            <CovidInfo:CalculatePercentageVaccinatedHandler
                            totalPopulation="<%= totalPopulation%>"
                                ></CovidInfo:CalculatePercentageVaccinatedHandler>
                            </h4>
                        </div>
                        <div class="newDiv1">
                            <h4 class="total">Required Target</h4>
                            <h4 class="total"> 
                                90%
                            </h4>
                        </div>

                    </div>
                    <div class="mycard1">
                        <div class="newDiv1">
                            <h4 class="total">Remaining Percentage</h4>
                            <h4 class="total">  
                            <CovidInfo:CalculateRemainingPercentageHandler
                            totalPopulation="<%= totalPopulation + ',' + 90%>"></CovidInfo:CalculateRemainingPercentageHandler>
                            </h4>
                        </div>


                    </div>


                </div>



                <div class='containerCard'>
                    <div class="mycard">
                        <a href="ShowPatients.jsp">
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
                </div>

                </a>

                <!-- comment -->

                <div class="mycard">
                    <div class='newDiv'>
                        <h5 class='total'>Health Administrators</h5>
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
                            <a href="ShowHealthCenter.jsp" style="text-decoration:none;">
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
                            </a>
               
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
