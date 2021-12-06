/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.health;

import java.sql.Connection;
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
 * @author Scentia
 */
public class RegisterHealthCenterHandler extends SimpleTagSupport {
    
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
           // out.println("The values are " +values);
            
            String[] newValues = values.split(",");
            
            Statement St = newConn.createStatement();
                    // out.println("Am here man" +newValues[1]+ "another"+newValues[0]+ "The table is" +table);
                     if(newValues.length > 1){

      St.execute("INSERT INTO `healthcentres` (`healthCenterId`, `healthCenterName`, "
              + "`totalPatients`, `totalVaccines`, `receiveDate`, `receiveMonth`, `vaccineName`)"
              + " VALUES (NULL, '"+newValues[0]+"', '"+newValues[1]+"', NULL, NULL, NULL, NULL);");
                
      
      out.println("<script type='text/javascript'>alert('"+newValues[0]+" added successfully');</script>");
                 out.println("<script type='text/javascript'>window.location='systemadminstrator.jsp'</script>");
      
                 
             }
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
            throw new JspException("Error in RegisterHealthCenterHandler tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterHealthCenterHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setValues(String values) {
        this.values = values;
    }
    
}
