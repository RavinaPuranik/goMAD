<%@include file="header1.jsp" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%
    if(nm==null)
        {
        response.sendRedirect("login.jsp");
        }
    %>
    <head>
        <link rel="stylesheet" href="style.css">
        <style>
table {
    border-collapse: collapse;
    width:90%;
    margin-left:5%;
    margin-right:5%;
    
    
}

th, td {
    text-align: left;
    padding: 8px;
    
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color:black;
    color: white;
}
</style>
    
    </head>
    <body>
<% 
               
        Connection con=(Connection)this.getServletContext().getAttribute("mycon");
        Statement st=(Statement)con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs=st.executeQuery("select * from participant");
        if(!rs.next())
        {%>
        <center>
    <h2 style="padding-top:230px;">No participants.</h2>
</center>

       <% }
        else{
        %>
        <div class="event" style="padding-top:130px;"><center><h1>PARTICIPANTS</h1></center>
               <br>
       <table>
           <tr>
                   <th>EVENT NAME</TH>
                   <th>PARTICIPANT NAME</th>
                   <th>EMAIL</th>
                   <th>PHONE</th>
                   <th>EVENT LOCATION</th>
                   </tr>
    <%
       rs.previous();
       while(rs.next())
       {  
           %>
            <tr>  
     <td><%=rs.getString(5)%></td>   
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    </tr>
           
           
    <%  }}%>
        </table>
           </div> 
    </body>
</html>
