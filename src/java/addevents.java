


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class addevents extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           String ename=request.getParameter("ename");
           String edate=request.getParameter("edate");
           String etime=request.getParameter("etime");
           String elocation=request.getParameter("elocation");
           String edesc=request.getParameter("edesc");
           
           Connection con=(Connection)this.getServletContext().getAttribute("mycon");
           try {
               Statement s=con.createStatement();
               ResultSet rs=s.executeQuery("select * from events where eventname="+"'"+ename+"'");
               if(rs.next())
               {
                   out.println("<script type=\"text/javascript\">");
    out.println("alert('Fail to add!!');");
   out.println("location='Add.jsp';");
   out.println("</script>");
                   }
           else
               {
 PreparedStatement ps=con.prepareStatement("insert into events values(?,?,?,?,?)");
               
ps.setString(1,ename);
ps.setString(2, edate);
ps.setString(3, etime);
ps.setString(4,elocation);
ps.setString(5,edesc);

int n=ps.executeUpdate();
        
if(n>0)
{  
    out.println("<script type=\"text/javascript\">");
    out.println("location='events.jsp';");
   out.println("alert('Successfully Added!!');");
   out.println("</script>");
}
                   }  
           } catch (Exception ex) {
                Logger.getLogger(addevents.class.getName()).log(Level.SEVERE, null, ex);
                out.println(ex);
            }
           


        }

    
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
