/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.administration;

import java.sql.Connection;
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
 * @author user
 */
public class printCertificate extends SimpleTagSupport {
     DBConnection Conn = new DBConnection();
         Connection newConn  = Conn.getConnection();


    private String table;
    private String values;

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
              Statement St = newConn.createStatement();
                           
                  ResultSet vaccineType  = St.executeQuery("select * from patients where patientName = '"+values+"'");
    while(vaccineType.next()){

    out.println(" "
            + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>Name</h4>\n" +
"                        <h4>"+vaccineType.getString("patientName")+"</h4></div>"
                    + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>Health Center</h4>\n" +
"                        <h4>"+vaccineType.getString("healthCenterName")+"</h4></div>"
        + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>NIN Number</h4>\n" +
"                        <h4>"+vaccineType.getString("NIN")+"</h4></div>"
        + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>Date of Vaccination</h4>\n" +
"                        <h4>"+vaccineType.getString("dateOfVaccination")+"</h4></div>"
        + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>Type of Vaccination</h4>\n" +
"                        <h4>"+vaccineType.getString("typeOfVaccine")+"</h4></div>"
        + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>Batch Number</h4>\n" +
"                        <h4>"+vaccineType.getString("batchNumber")+"</h4></div>"
        + "<div style=\"display: flex;\n" +
"                align-items: center;\n" +
"                justify-content: space-around;\n" +
"                border-bottom:1px solid #000;\n" +
"                width: 90%;\n" +
"                margin-left: 5%;\n" +
"                margin-right: 10%;\">\n" +
"                        <h4>Return Date</h4>\n" +
"                        <h4>"+vaccineType.getString("returnDate")+"</h4></div>"
        + "");

}
     out.println("<div style=\"display:grid;place-items: center; padding: 20px;\">"
             + "<button onClick='window.print()' style=\"color: #fff; background-color: #1c478e;border: 0; cursor: pointer;width: 25%; height: 35px;border-radius: 20px;;\">Print Certificate</button>"
             + "</div>");

    
    Conn.closeConnection();

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in printCertificate tag", ex);
        } catch (SQLException ex) {
             Logger.getLogger(printCertificate.class.getName()).log(Level.SEVERE, null, ex);
         }
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setValues(String values) {
        this.values = values;
    }
    
}
