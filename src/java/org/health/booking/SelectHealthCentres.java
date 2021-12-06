/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.db.connection.DBConnection;

/**
 *
 * @author HP Elitebook 1040
 */
public class SelectHealthCentres extends SimpleTagSupport {

    DBConnection Conn = new DBConnection();
    Connection newConn = Conn.getConnection();

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");
            //out.println("The values are "+values);
            //int quantity =   Integer.parseInt(newValues[1]);
            String query = "SELECT * FROM `healthcentres`";

            PreparedStatement preparedStatement = newConn.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String countBookings = "SELECT count(bookingId) as totalBookings FROM bookings WHERE healthCenterName='" + resultSet.getString("healthCenterId") + "'";

                PreparedStatement prepSt = newConn.prepareStatement(countBookings);
                ResultSet rs = prepSt.executeQuery();
                rs.next();
                out.println("<option ");
                out.println("value = \"" + resultSet.getString("healthCenterId") + "\">");
                String message = "";
                if (rs.getString("totalBookings").equals("0")) {
                    message = "No Bookings yet";
                } else if (rs.getString("totalBookings").equals("1")) {
                    message = "1 Booking";
                } else {
                    message = rs.getString("totalBookings") + " Bookings";
                }
                //Vaccines available at the hospital
                String selectVaccines = "SELECT vaccines.type as type FROM `healthcentrevaccines` INNER JOIN vaccines ON healthcentrevaccines.batchNo = vaccines.batchNumber WHERE healthCenterId= '" + resultSet.getString("healthCenterId") + "'";

                PreparedStatement pSt = newConn.prepareStatement(selectVaccines);
                ResultSet result = pSt.executeQuery();
                int countVaccines = 0;
                String vaccines = " (";
                while (result.next()) {
                    countVaccines++;
                    if (countVaccines == 1) {
                        vaccines += "Vaccines: ";
                        vaccines += result.getString("type");

                    } else {
                        vaccines += ", ";
                        vaccines += result.getString("type");

                    }

                }
                if (countVaccines == 0) {
                    vaccines += "No Vaccine";
                }
                vaccines += ")";

                out.println(resultSet.getString("healthCenterName") + vaccines + "<small>" + " ----" + message + "</small>");

                out.println("</option>");

            }

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in SelectHealthCentres tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(SelectHealthCentres.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
