import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class saveuser extends HttpServlet {

     
    
 
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String s1=request.getParameter("uname");
        String s2=request.getParameter("email");
        String s3=request.getParameter("phno");
        String s4=request.getParameter("pwd");
        String s5=request.getParameter("utype");
           Connection con=(Connection)this.getServletContext().getAttribute("mycon");
           Statement s=con.createStatement();
               ResultSet rs=s.executeQuery("select * from userdata where email="+"'"+s2+"'");
               if(rs.next())
               {
                   out.println("<script type=\"text/javascript\">");
    out.println("alert('Registration Failed!!');");
   out.println("location='login.jsp';");
   out.println("</script>");
                   }
           else
               {
            PreparedStatement ps;
           ps=(com.mysql.jdbc.PreparedStatement) con.prepareStatement("insert into userdata values(?,?,?,?,?)");
            ps.setString(1, s1);
            ps.setString(2, s2);
            ps.setString(3, s3);
            ps.setString(4, s4);
            ps.setString(5, s5);
            
            int n=ps.executeUpdate();
            
            if(n>0)
{  
    out.println("<script type=\"text/javascript\">");
   out.println("alert('Successfully Registered');");
   out.println("location='index.jsp';");
   out.println("</script>");
}
    
}
        }catch (SQLException ex) {
                Logger.getLogger(addevents.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        
        
        
        
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
