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
      <jsp:include page="includes/systemadmin.jsp" />
            <%@taglib  uri="/WEB-INF/tlds/GetHealthCenterTld"  prefix="Admins" %> %>
            <%@taglib  uri="/WEB-INF/tlds/VaccineOperationsTld"  prefix="vaccine"%>
          

<div class="w3-container">
            <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
        <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">
           
        </div>

        <form action="RegisterVaccineServlet" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px;box-shadow: 
        rgba(100, 100, 111, 0.2) 0px 7px 29px 0px; border-radius: 10px;">
            
            
        <div style="display: flex;align-items: center; justify-content: center;">
            <h5 style="align-items: center;">Register Vaccinated Patient</h5>
        </div>

            <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Patient Name</label>
                <input type="name" class="form-control" name="name">
            </div>

              <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">NIN</label>
                <input type="text" class="form-control m-2" name="nin">
              </div>
            
                 <div class="m-3">
                         <label for="exampleFormControlInput1" class="form-label">Health Center </label>
                  <select required  class="form-control m-2" name="centre">
                    <option selected="" disabled>choose health center</option>
                    <Admins:GetHealthcCenterHandler/>
                </select>
            </div>
                o
                          <div class="m-3">
                         <label for="exampleFormControlInput1" class="form-label">Vaccine Name </label>
                  <select required  class="form-control m-2" name="vaccineName">
                    <option selected="" disabled>choose Vaccine</option>
                    <vaccine:SelectVaccinesTag />
                </select>
            </div>
                

          <div class="m-3">
                         <label for="exampleFormControlInput1" class="form-label">Batch Number </label>
                  <select required  class="form-control m-2" name="batchNumber">
                    <option selected="" disabled>choose batch number</option>
                    <vaccine:SelectBatchNoTag />
                </select>
            </div>
            
                  
            

              <div class="m-3 "  style="margin:20px 0;">
                  <button type="submit" class="btn btn-primary pt-3 m-2 btn-block">Register Vaccine</button>
              </div>
            
                        <a href="SystemAdministratorServlet">Back</a>
    
        </form>
     </div>
</div>

</div>

    </body>
</html>
