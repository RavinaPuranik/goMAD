<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@include file="header1.jsp"%>
<%
    if(nm==null)
        {
        response.sendRedirect("login.jsp");
        }
    %>
<html>
<title>goMAD-Make A Difference</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="adminevents.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
history.pushState(null, document.title, location.href);
window.addEventListener('popstate', function (event)
{
  history.pushState(null, document.title, location.href);
});
</script>
<style>
    .count{
        margin: 15% 30%;
        padding-top:20px;
        padding-left:10px;
        text-align: center;
         border:5px dotted black;
         width:500px;
         height:400px;
         background:blanchedalmond;
    }
    </style>
<body bgcolor="#383838">
    <%
        Connection con=(Connection)this.getServletContext().getAttribute("mycon");
        Statement st=(Statement)con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement st1=(Statement)con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement st2=(Statement)con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement st3=(Statement)con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs=st.executeQuery("select count(eventname) from events");
        rs.next();
        
       ResultSet rs1=st1.executeQuery("select count(email) from participant");
        rs1.next();
ResultSet rs2=st2.executeQuery("select count(email) from feedback");
       rs2.next();
        ResultSet rs3=st3.executeQuery("select count(email) from userdata");
        rs3.next();
    
    %>
        <div class="count">
            <h1>COUNT</h1>
            <table width="400" height="200">
                <tr>
                    <td>Total Number of users:</td>
                    <td><%=rs3.getString(1)%></td>
                </tr>
                <tr>
                    <td>Total Number of events:</td>
                    <td><%=rs.getString(1)%></td>
                </tr>
                <tr>
                    <td>Total Number of participants:</td>
                    <td><%=rs1.getString(1)%></td>
                </tr>
                <tr>
                    <td>Total Number of feedbacks/suggestions:</td>
                    <td><%=rs2.getString(1)%></td>
                </tr>
            </table>
        </div>

</body>
</html>