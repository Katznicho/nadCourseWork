<%-- 
    Document   : RegisterVaccineForm
    Created on : Dec 2, 2021, 1:08:27 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
        <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">
           
        </div>

        <form action="RegisterVaccineServlet" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px;box-shadow: 
        rgba(100, 100, 111, 0.2) 0px 7px 29px 0px; border-radius: 10px;">
            
            
        <div style="display: flex;align-items: center; justify-content: center;">
            <h5 style="align-items: center;">Register new vaccine</h5>
        </div>

            <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Vaccine Name</label>
                <input type="name" class="form-control" name="name">
            </div>

              <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Quantity</label>
                <input type="quantity" class="form-control m-2" name="quantity">
              </div>
            
                  <div class="m-3">

                      <input type="hidden" class="form-control m-2" name="redirect" value="true">
              </div>
            

              <div class="m-3 "  style="margin:20px 0;">
                  <button type="submit" class="btn btn-primary pt-3 m-2 btn-block">Register Vaccine</button>
              </div>
            
                        <a href="SystemAdministratorServlet">Back</a>
    
        </form>

    </body>
</html>
