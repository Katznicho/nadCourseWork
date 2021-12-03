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
        <title>Page</title>
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
     </div>
</div>

</div>

    </body>
</html>
