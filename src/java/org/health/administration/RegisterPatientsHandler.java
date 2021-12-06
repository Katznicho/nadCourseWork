/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.administration;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.db.connection.DBConnection;

/**
 *
 * @author user
 */
public class RegisterPatientsHandler extends SimpleTagSupport {

    DBConnection Conn = new DBConnection();
    Connection newConn = Conn.getConnection();

    private String tables;
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

            String[] newValues = values.split(",");
            String healthCentreName = "";
            String center = newValues[5];
            String name = newValues[0];s
            String nin = newValues[1];

            String healthCentreId = newValues[2];
            String batchNo = newValues[3];
            String vaccineType = newValues[4];
            Statement St = newConn.createStatement();

            if (newValues.length > 1) {
                String updateQuery = "UPDATE `healthcentrevaccines` SET remainingDoses = remainingDoses-1"
                        + " WHERE healthCenterId= '" + healthCentreId + "' AND batchNo= '" + batchNo + "'";
                St.executeUpdate(updateQuery);
                Statement st = newConn.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM `healthcentrevaccines` "
                        + "INNER JOIN healthcentres ON healthcentrevaccines.healthCenterId=healthcentres.healthCenterId "
                        + "WHERE healthcentrevaccines.batchNo=1;");
                while (rs.next()) {
                    healthCentreName = rs.getString("HealthCenterName");
                }
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                
	
                int days = Integer.parseInt(newValues[5]);
                Calendar c = Calendar.getInstance();
                c.add(Calendar.DATE, days);
                java.util.Date d =  c.getTime();
                String newDate = sdf.format(c.getTime()); 
                out.println("This is it "+days+"Next jab on "+newDate);

                St.execute("INSERT INTO `patients` SET `healthCenterName`='" + center + "', `NIN`= '" + nin + "',`typeOfVaccine`='" + vaccineType + "' ,`batchNumber`='" + batchNo + "',`patientName`='" + name + "', `returnDate`= '"+newDate+"'");

                //Reduce the vaccine doses by 1
                out.println("<script type='text/javascript'>alert('" + newValues[0] + " added successfully');</script>");
                out.println("<script type='text/javascript'>window.location='PrintCertificate.jsp?name=" + name + "'</script>");
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
            throw new JspException("Error in RegisterPatientsHandler tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterPatientsHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void setTables(String tables) {
        this.tables = tables;
    }

    public void setValues(String values) {
        this.values = values;
    }

}
