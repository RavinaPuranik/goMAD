import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class verifyuser extends HttpServlet {
    ResultSet rs;
    Connection con;
    PreparedStatement ps;
    String qr;
    public void init()
    {
         try{
         con=(Connection)this.getServletContext().getAttribute("mycon");
          qr="select name from userdata where email=? and password=?";
         ps=con.prepareStatement(qr);
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
        //?uid&pwd&utype
        String s1=request.getParameter("email");
        String s2=request.getParameter("pwd");
        String s3=request.getParameter("utype");
        
        if(s3.equals("owner")){
            if(s1.equals("gomad271@gmail.com") && s2.equals("admin")){
               
                    String s="Admin";
                    
                    HttpSession session=request.getSession();
                    session.setAttribute("uname", s);
                    response.sendRedirect("adminhome.jsp");
                
            }
            else{
                out.println("<script type=\"text/javascript\">");
   out.println("alert('Invalid id or password!');");
   out.println("location='login.jsp';");
   out.println("</script>");}
            
        }else{
            try{
            ps.setString(1,s1);
            ps.setString(2,s2);
            rs=ps.executeQuery();
            boolean b=rs.next();
            if(b==true){
                
                 String s=rs.getString(1);   
               
                HttpSession session=request.getSession();
                session.setAttribute("uname", s);
                
                String ch=request.getParameter("save");
                if(ch!=null){
                    Cookie ck1=new Cookie("emailid",s1);
                    Cookie ck2=new Cookie("password",s2);
                    //Cookie ck3=new Cookie("uname",s);
                    ck1.setMaxAge(60*60*24*7);
                    ck2.setMaxAge(60*60*24*7);
                    //ck3.setMaxAge(60*60*24*7);
                    response.addCookie(ck1);
                    response.addCookie(ck2);
                    //response.addCookie(ck3);
                }
                response.sendRedirect("index.jsp");
            }else{
                out.println("<script type=\"text/javascript\">");
                
   out.println("alert('Invalid id or password!');");
   out.println("location='login.jsp';");
   out.println("</script>");
   
   
            }
            }catch(Exception e){}
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
