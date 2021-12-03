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
  }
  .mycard{
    box-shadow: rgba(6, 60, 114, 0.2) 0px 8px 24px;
    width: 200px;
    height: auto;
    padding: 10px;
    margin:10px;
    background-color: #1c478e;
    border-radius: 10px;;
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

</style>
        
    </head>
    <body>


<jsp:include page="includes/systemadmin.jsp" />
  
<div class="w3-container">
    

<%
    DBConnection Conn = new DBConnection();
         Connection newConn  = Conn.getConnection();
         Statement St = newConn.createStatement();
//         String strQuery = "SELECT healthCenterName FROM patients";
//ResultSet rs = St.executeQuery(strQuery);
ResultSet rs =St.executeQuery("select * from patients ");



//int totalAdmin = 0;
//administrator
 int Countrow= 0;
 

//rs.length
while(rs.next()){
//Countrow = rs.getString("healthCenterName");
//out.println("<h1>Total Row :" +rs.getString("email")+"</h1>");
Countrow++;
}

%>
<%
    int totalAdmin = 0;
    ResultSet admin  = St.executeQuery("select * from administrator where role ='Admin'");
    while(admin.next()){
//        if(admin.getString("Admin").equals("Admin")){
            totalAdmin++;
      //  }

}
//    @include file="includes/totalAdmins.jsp" 
           %>
<%
     out.println("<div class='containerCard'>"
             +"<div class='mycard'>"
             + " <div class='newDiv'>"
             +"<h5 class='total'>Total Patients</h5>"
             + "</div>"
             + " <div class='newDiv'>"
             +"<h1 class='total'>"+Countrow+"</h1>"
             + "</div>"
             + "</div>"
                     +"<div class='mycard'>"
             + " <div class='newDiv'>"
             +"<h5 class='total'>Total Health Administrators</h5>"
             + "</div>"
             + " <div class='newDiv'>"
             +"<h1 class='total'>"+totalAdmin+"</h1>"
             + "</div>"
             + "</div>"
             
             + "</div>");
%>

</div>

</div>
    </body>
</html>
