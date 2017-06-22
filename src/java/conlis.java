/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Web application lifecycle listener.
 *
 * @author ADMIN
 */
@WebListener()
public class conlis implements ServletContextListener {
Connection con;
    @Override
    public void contextInitialized(ServletContextEvent sce) {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/mad", "root", "root");
                sce.getServletContext().setAttribute("mycon",con);
            } catch (SQLException ex) {
                Logger.getLogger(conlis.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(conlis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
    }
}
