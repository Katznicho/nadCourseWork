/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.vaccine;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class SelectBatchNoTag extends SimpleTagSupport {

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
 String query = "SELECT * FROM vaccines";
            //INSERT INTO `administrator` (`id`, `email`, `name`, `password`, `role`, `confirmPassword`, `healthCenterName`)

            PreparedStatement preparedStatement = newConn.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                out.println("<option ");
                out.println("value = \"" + resultSet.getString("batchNumber") + "\">");
                out.println(resultSet.getString("batchNumber"));
                out.println("</option>");

            }
            newConn.close();
           
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in SelectBatchNoTag tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(SelectBatchNoTag.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
