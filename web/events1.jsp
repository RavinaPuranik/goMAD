<%@include file="header.jsp" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>View Events</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="adminevents.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .img{
        
        margin-top:10px;
        
        border:2px solid black;
    }
</style>
<body>
   

<ul style="float:right; padding-top:80px;" type="none">
    <li><A HREF="EventGallery.jsp"><img src="images/62.jpg" height="100" width="220" ></a></li>
    <li><img src="images/32.jpg" height="200" width="220" class="img"></li>
<li><img src="images/33.jpg" height="200" width="220" class="img"></li>
<li><img src="images/34.png" height="200" width="220" class="img"></li>
</ul>

        <% 
        
        Connection con=(Connection)this.getServletContext().getAttribute("mycon");
        Statement st=(Statement)con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs=st.executeQuery("select * from events");
        
        
      if(!rs.next())
      {%>
<center>
    <h2 style="padding-top:230px;">No upcoming events.Keep visiting for updates.</h2>
</center>
<%}
else
{
%>
<form action="participate">
        <div class="event" style="padding-top:140px;"><center><h1><%=rs.getString(1)%></h1></center>
           <table class="event1">
               <tr>
                   <th>Event Date</th>
                   <th>Event Time</th>
                   <th>Event Location</th>
                   <th>Event Description</th>
                   </tr>
    <tr>  
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
   
    <td><input type="submit" value="Participate"/></td>
    </tr>
    <input type="hidden" name="eventname" value="<%=rs.getString(1)%>"/>
           </table>
           </div>
    </form>
    <%
        
       while(rs.next())
       {  
           %>
<form action="participate">
           <div class="event"><center><h1><%=rs.getString(1)%></h1></center>
           <table class="event1">
               <tr>
                   <th>Event Date</th>
                   <th>Event Time</th>
                   <th>Event Location</th>
                   <th>Event Description</th>
                   </tr>
    <tr>  
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><input type="submit" value="Participate"/></td>
    </tr>
    <input type="hidden" name="eventname" value="<%=rs.getString(1)%>"/>
           </table>
           </div>
</form>
    <%  }} %>   
    </body>
</html>
