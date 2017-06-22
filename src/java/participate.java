import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class participate extends HttpServlet {

    Connection con;   PreparedStatement ps;ResultSet rs;
      PreparedStatement ps1;PreparedStatement ps2;ResultSet rs1;
      Statement st;ResultSet rsc;
    
    public void init()
    {
         try{
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mad","root","root");
         String qr="insert into participant values(?,?,?,?,?)";
         String qr1="select email,number from userdata where name=?";
         String qr2="select eventlocation from events where eventname=? ";
         ps=con.prepareStatement(qr);
         ps1=con.prepareStatement(qr1);
         ps2=con.prepareStatement(qr2);
         st=con.createStatement();
         
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
        //uid=&pwd=&uname=&address=&email=&mobile=
         HttpSession session=request.getSession();
        String n=(String)session.getAttribute("uname");  
        String s1=request.getParameter("eventname");
        if(n==null)
        {
        response.sendRedirect("login.jsp");}
        
               
        try{
            ps1.setString(1,n);
                rs=ps1.executeQuery();
                rs.next();
             String s2=rs.getString(1);//email
              String s3=rs.getString(2);//phone
            rsc=st.executeQuery("select * from participant where email="+"'"+s2+"'"+"and"+" eventname="+"'"+s1+"'");
            if(rsc.next())
               {
                   out.println("<script type=\"text/javascript\">");
    out.println("alert('Already Participated  !! Try another events');");
   out.println("location='events1.jsp';");
   out.println("</script>");
                   }
            else{
                
                  ps2.setString(1,s1);
                rs1=ps2.executeQuery();
                rs1.next();         
                String s4=rs1.getString(1);//eventlocation
            ps.setString(1, n);
            ps.setString(2, s2);
            ps.setString(3, s3);
            ps.setString(4, s4);
            ps.setString(5, s1);
            int no=ps.executeUpdate();
            
            if(no>0)
{  
    out.println("<script type=\"text/javascript\">");
   out.println("alert('Successfully Participated!!');");
   out.println("location='events1.jsp';");
   out.println("</script>");
}
    
            }

        }catch(Exception e){
            out.println(e);
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
