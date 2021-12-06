<%-- 
    Document   : RegisterVaccineForm
    Created on : Dec 2, 2021, 1:08:27 PM
    Author     : user
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
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="includes/healthadmin.jsp" />
        <%@taglib  uri="/WEB-INF/tlds/GetHealthCenterTld"  prefix="Admins" %> %>
        <%@taglib  uri="/WEB-INF/tlds/VaccineOperationsTld"  prefix="vaccine"%>


        <div class="w3-container">
            <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
                <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">

                </div>

                <form action="AddPatientToDb.jsp" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px;box-shadow:
                      rgba(100, 100, 111, 0.2) 0px 7px 29px 0px; border-radius: 10px;">


                    <div style="display: flex;align-items: center; justify-content: center;">
                        <h5 style="align-items: center;">Register Vaccinated Patient</h5>
                    </div>

                    <div class="m-3">
                        <label for="exampleFormControlInput1" class="form-label">Patient Name</label>
                        <input type="name" class="form-control" name="name" required>
                    </div>

                    <div class="m-3">
                        <label for="exampleFormControlInput1" class="form-label">NIN</label>
                        <input type="text" class="form-control m-2" name="nin" required>
                    </div>
                    <%
                        String healthCentreId = (String) request.getSession().getAttribute("healthCentreId");
                        String healthCentreName = (String) request.getSession().getAttribute("healthCentreName");

                    %>

                    <input type="hidden" name="healthCentreId" value="<%=healthCentreId%>"/>

                    <div class="m-3">
                        <label for="exampleFormControlInput1" class="form-label">Health Centre </label>
                        <input type="text" class="form-control m-2" readonly="" value="<%=healthCentreName%>" />
                     
                    </div>

                    <div class="m-3">
                        <label for="exampleFormControlInput1" class="form-label">Vaccine Batch# ---Doses Left </label>
                        <select required  class="form-control m-2" name="batchNumber">
                            <option selected="" disabled>choose batch number</option>

                            <vaccine:SelectVaccineBatches healthCentreId="<%= healthCentreId%>" />
                        </select>
                    </div>


                    <div class="m-3">
                        <label for="exampleFormControlInput1" class="form-label ">Days to the next Jab(Put 0 if no second jab is required) </label>
                        <input class="form-control m-2" type="number" name="days" required="" value="0" />
                    </div>


                    <div class="m-3 "  style="margin:20px 0;">
                        <button type="submit" class="btn btn-primary pt-3 m-2 btn-block">Register Patients</button>
                    </div>



                </form>
            </div>
        </div>

    </div>

</body>
</html>
