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
        <title>Certificate of Vaccination</title>
        <style>
                .center{
                        display: grid;
                        place-items: center;
                }
                .table{
                        display: flex;
                        align-items: center;
                        justify-content: space-around;
                        border-bottom:1px solid #000;
                        width: 90%;
                        margin-left: 5%;
                        margin-right: 10%;
                        
                }

        </style>
    </head>
    <body>
              <%@ taglib uri="/WEB-INF/tlds/GetCovidInfo" prefix="Print" %>
        <% 
            String id = request.getParameter("name");
            
        %>
        <div class="container">
              <div class="center">
                        <h1>Vaccination Certificate</h1>
                </div>
                <div class="center">
                        <img src="https://lh3.googleusercontent.com/proxy/V5z_y0EZb1EhimUgrkuNIs_zgO9ihRseXpwMGBsjWcepnIaGm3rOSSPg_X8i-eYfSmDDOYC5nFTaG9JPkpDsq1vvrjUMlodHT7DYs88" 
                        alt="">
                </div>
                    <Print:printCertificate table="patients" values="<%= id %>"></Print:printCertificate>
                    <div style="display:grid;place-items: center; padding: 20px;">
<!--                        <button 
                        style="color: #fff; background-color: #1c478e;border: 0;
                        cursor: pointer;width: 25%; height: 35px;border-radius: 20px;;"> Back</button>-->
<a  href="ShowPatients.jsp">Back</a>

                 </div>
        </div>

        
        
    </body>
</html>
