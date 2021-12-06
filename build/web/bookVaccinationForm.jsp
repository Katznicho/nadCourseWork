<%-- 
    Document   : bookVaccination
    Created on : Dec 3, 2021, 3:37:47 PM
    Author     : HP Elitebook 1040
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center">Book Vaccination</h1>
        <div class="w3-container">
            <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
                <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">

                </div>

                <form action="AddBookingToDb.jsp" method="post" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px;box-shadow:
                      rgba(100, 100, 111, 0.2) 0px 7px 29px 0px; border-radius: 10px;">


                    <div style="display: flex;align-items: center; justify-content: center;">
                        <h5 style="align-items: center;">Booking</h5>
                    </div>

                    <div class="m-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="name" class="form-control" name="name" placeholder="Enter full name" required>
                    </div>

                    <div class="m-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="e.g example@exa.com" required>
                    </div>

                    <div class="m-3">
                        <label for="date" class="form-label">Date</label>
                        <input type="date" class="form-control m-2" name="date" required>
                    </div>
                    <div class="m-3">
                        <label for="time" class="form-label">Time</label>
                        <input type="time" class="form-control m-2" name="time" id="time" required>
                    </div>
                    <div class="m-3">

                        <input type="hidden" class="form-control m-2" name="redirect" value="true">
                    </div>
                              
                    <%@taglib  prefix="healthCentres" uri="/WEB-INF/tlds/healthCentres_tag" %>

                    <div class="m-3">
                        <label for="time" class="form-label">Health Centre </label>
                        
                        <select class="form-control m-2" name="healthCentre">
                            <option>Select Health Centre</option>
                                <healthCentres:SelectHealthCentres />
                            
                            
                            
                        </select>
                        
                    </div>
                    <div class="m-3 "  style="margin:20px 0;">
                        <button type="submit" class="btn btn-primary pt-3 m-2 btn-block">Book Now</button>
                    </div>

                    <a href="index.jsp">Back</a>

                </form>
            </div>
        </div>

    </body>
</html>
