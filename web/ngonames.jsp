<%-- 
    Document   : ngonames
    Created on : Apr 21, 2017, 8:53:02 AM
    Author     : ADMIN
--%>
<%@include file="header.jsp" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="dstyle.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NGO List</title>
        <style>
table {
    border-collapse: collapse;
    width: 100%;
    
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
    <body bgcolor="lightgray">
   
   
    		<div class="sld">
	            <img class="slides" src="images/17.jpg" />            
	            <img class="slides" src="images/19.jpg" />
                    <img class="slides" src="images/21.jpg" />
                    <img class="slides" src="images/22.jpg" />
                    <img class="slides" src="images/23.jpg" />
	            
                </div>
        <% String category=request.getParameter("category");%>
    <center><h1><b><%=category%></b></h1></center>
    <table>
             <tr>
                 <th>Serial No.</th>
                 <th>Name</th>
                 <th>Link</th>
                 <th>Category</th>
             </tr>
        <% 
        
        Connection con=(Connection)this.getServletContext().getAttribute("mycon");
        PreparedStatement ps=con.prepareStatement("select * from ngo where category=?");
       ps.setString(1,category);
        ResultSet rs=ps.executeQuery(); 
         int i=1;
         while(rs.next())
       {
           %>
    <tr>
     <td><%=i%></td>  
    <td><%=rs.getString(2)%></td>
    <td><a href=<%=rs.getString(3)%> target="_blank"><%=rs.getString(3)%></a></td>
    <td><%=rs.getString(4)%></td>
    </tr>
       <% i++; } %>
         </table>
    </body>
    
</html>
<%@ include file="footer.jsp"%>