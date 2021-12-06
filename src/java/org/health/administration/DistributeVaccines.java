/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.health.administration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.db.connection.DBConnection;

/**
 *
 * @author user
 */
public class DistributeVaccines extends HttpServlet {

    DBConnection Conn = new DBConnection();
    Connection newConn = Conn.getConnection();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DistributeVaccines</title>");
            out.println("</head>");
            out.println("<body>");
            /* TODO output your page here. You may use following sample code. */
            String details = request.getParameter("details");
            String[] detArr = details.split(",");
            String batchNo = detArr[0];
            String vaccineType = detArr[2];
            int totalDoses = Integer.parseInt(detArr[1]);
            int totalPatients = 0;
            int[] totalPatientsHospital = new int[5];
            int[] doses = new int[5];
            String[] hospitalNames = new String[5];
            String[] hospitalIds = new String[5];
            Statement St = newConn.createStatement();

            ResultSet rs = St.executeQuery("SELECT * FROM `healthcentres`");
            int i = 0;
            while (rs.next()) {
                //`healthCenterId`, `healthCenterName`, `totalPatients`, 
                //`totalVaccines`, `receiveDate`, `receiveMonth`, `vaccineName
                hospitalNames[i] = rs.getString("healthCenterName");
                hospitalIds[i] = rs.getString("healthCenterId");
                totalPatientsHospital[i] = Integer.parseInt(rs.getString("totalPatients"));
                totalPatients += Integer.parseInt(rs.getString("totalPatients"));
                i++;
            }
            for (i = 0; i < 5; i++) {
                float dose = (float) totalPatientsHospital[i] / totalPatients * totalDoses;
                Statement st = newConn.createStatement();
                //out.println("Total Patients " + totalPatientsHospital[i]);
                int dosage = (int) dose;
                st.execute("INSERT INTO `healthcentrevaccines` "
                        + "SET `healthCenterId`= '" + hospitalIds[i] + "', `batchNo`= '" + batchNo + "', "
                        + "`totalDoses`= '" + dosage + "', `remainingDoses`= '" + dosage + "'");
                //out.println(dose);

            }
            Statement st1 = newConn.createStatement();
            st1.execute("UPDATE `vaccines` SET `status`='Done' WHERE batchNumber = '"+batchNo+"'");
            
                  out.println("<script type='text/javascript'>window.location='systemadminstrator.jsp'</script>");


            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
