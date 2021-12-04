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
public class GetSystemAdminHandler extends SimpleTagSupport {
    DBConnection Conn = new DBConnection();
         Connection newConn  = Conn.getConnection();

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
                                int totalSystemAdmins = 0;
                   ResultSet systemadmins  = 
                      St.executeQuery("select * from administrator where role ='SuperAdmin'");
                   while(systemadmins.next()){
//        if(admin.getString("Admin").equals("Admin")){
            totalSystemAdmins++;
       }
                   Conn.closeConnection();
          
                   out.println(totalSystemAdmins);
                   
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in GetSystemAdminHandler tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(GetSystemAdminHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
