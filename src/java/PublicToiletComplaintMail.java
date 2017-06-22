

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class PublicToiletComplaintMail extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String to="authority271@gmail.com";  //pass:shreyaravina
final String from="gomad271@gmail.com";
final String pass="shreyaravina";
String sub="Complaint regarding Road Problem";
String problem=request.getParameter("problem");
String pdesc=request.getParameter("pdesc");
String states=request.getParameter("states");
String city=request.getParameter("city");
String area=request.getParameter("area");
String ward=request.getParameter("ward");

String message="Problem:"+" "+problem+"\n"+"Description:"+" "+pdesc+"\n"+"State:"+" "+states+"\n"+"City:"+" "+city+"\n"+"Area:"+" "+area+"\n"+"Ward:"+" "+ward+"\n";

//create the properties
Properties props=System.getProperties();
props.setProperty("mail.smtp.host", "smtp.gmail.com");
props.setProperty("mail.smtp.auth", "true");
props.setProperty("mail.smtp.starttls.enable", "true");

//create the session
Session session=Session.getDefaultInstance(props, new Authenticator() {
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(from,pass); //To change body of generated methods, choose Tools | Templates.
    }
});
//create the message
MimeMessage msg=new MimeMessage(session);
            try {
                msg.setFrom(new InternetAddress(from));
                msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                msg.setSubject(sub);
                msg.setText(message);
            } catch (MessagingException ex) {
                Logger.getLogger(PublicToiletComplaintMail.class.getName()).log(Level.SEVERE, null, ex);
            }

            try {
                //send the message
                Transport.send(msg);
            } catch (MessagingException ex) {
                Logger.getLogger(PublicToiletComplaintMail.class.getName()).log(Level.SEVERE, null, ex);
            }

    
    out.println("<script type=\"text/javascript\">");
   out.println("alert('Successfully send!!');");
   out.println("location='complaint.jsp';");
   out.println("</script>");           
       }
    }
        


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}// </editor-fold>


