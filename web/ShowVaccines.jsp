<%-- 
    Document   : ShowVaccines
    Created on : Dec 4, 2021, 9:44:52 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine</title><!-- comment -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style>
    .mytable{
        margin-left: 100px !important;
        margin-top:100px !important;
    }
    .buttons{
        float:right;
        margin:10px;
    }
    .button{
                margin-left: 100px !important;
    }
</style>
    </head>
    <body>
        <jsp:include page="includes/systemadmin.jsp" />
                         <%@ taglib uri="/WEB-INF/tlds/GetCovidInfo" prefix="ShowVaccines" %>
                         
                         
        <div class="w3-container" style="margin-left:17%">
            
            <div class="buttons">
                <a href="RegisterVaccineForm.jsp" class="btn btn-primary button">Add Vaccine</a>
            </div>
            <table class="table mytable thead-dark">
  <thead >
    <tr>
      <th >Batch Number</th>
      <th >Vaccine Name</th>
      <th >Total Dozes</th>

      <th>Status</th>
      <th>Distribute</th>
    </tr>
  </thead>
  <tbody>
       <ShowVaccines:ShowVaccineHandler/>

  </tbody>

                
            </table>
        

            
        </div>
    </body>
</html>
