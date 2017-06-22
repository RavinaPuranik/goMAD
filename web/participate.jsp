
  
<%  String n=(String)session.getAttribute("uname");  
        if(n==null)
                       {response.sendRedirect("login.jsp");
                       }
       
 %> 

<%@include file="header.jsp" %>
<html>
    <title>Participation</title>

<link rel="stylesheet" href="adminevents.css"/>

    
    <body>
         <div class="event" style="padding-top:150px; height:500px">
             <center><h1>You have sucessfully register in event</h1>
      <p>will be shortly recieving a confirmaton mail<br>
     Thanks and regards "goMAD" team
      </p></center>
         </div>
    </body>
</html>
<%@include file="footer.jsp" %>