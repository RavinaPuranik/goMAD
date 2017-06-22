
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addngo extends HttpServlet {

    Connection con;   PreparedStatement ps;
    ResultSet rs;PreparedStatement ps1;
    public void init()
    {
         try{
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mad","root","root");
         String qr="insert into ngo values(?,?,?,?)";
         ps= con.prepareStatement(qr);
         String qr1="select count(sno) from ngo";
         ps1=con.prepareStatement(qr1);
         }catch(Exception e){}
    }
    
    public void destroy()
    {
            try{
                con.close();
            }catch(Exception e){}
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           String name=request.getParameter("name");
           String link=request.getParameter("link");
           String cat=request.getParameter("cat");
           
           
            try {
          
           rs=ps1.executeQuery();
           rs.next();
           String count=rs.getString(1);
          int i=Integer.parseInt(count);
          int p=i+1;
          String c= Integer.toString(p);
          
           ps.setString(1,c);
ps.setString(2,name);
ps.setString(3,link);
ps.setString(4,cat);

int n=ps.executeUpdate();

if(n>0)
{  
    
        out.println("<script type=\"text/javascript\">");
   out.println("alert('Sucessfully ADDED');");
   out.println("location='addngo.jsp';");
   out.println("</script>");
            }
else
{    
    
    out.println("<script type=\"text/javascript\">");
   out.println("alert('Fail to add!!');");
   out.println("location='addngo.jsp';");
   out.println("</script>");}

            } catch (Exception e) {
                
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

  