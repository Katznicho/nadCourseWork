<%-- 
    Document   : RegisterVaccineForm
    Created on : Dec 2, 2021, 1:08:27 PM
    Author     : user
--%>

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

<div class="w3-container">
            <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
        <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">
           
        </div>

        <form action="AddHealthCenterToDb.jsp" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px;box-shadow: 
        rgba(100, 100, 111, 0.2) 0px 7px 29px 0px; border-radius: 10px;">
            
            
        <div style="display: flex;align-items: center; justify-content: center;">
            <h5 style="align-items: center;">Register Health Center</h5>
        </div>

            <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Health Center Name:</label>
                <input type="text" class="form-control" name="healthCenterName">
            </div>

              <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">No Of Patients:</label>
                <input type="number" class="form-control m-2" name="totalPatients">
              </div>
            
             
            
                  <div class="m-3">

                      <input type="hidden" class="form-control m-2" name="redirect" value="true">
              </div>
            

              <div class="m-3 "  style="margin:20px 0;">
                  <button type="submit" class="btn btn-primary pt-3 m-2 btn-block">Register Health Center</button>
              </div>
            

    
        </form>
     </div>
</div>

</div>

    </body>
</html>

