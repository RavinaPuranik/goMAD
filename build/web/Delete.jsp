<%@include file="header1.jsp"%>
<html>
    <%
    if(nm==null)
        {
        response.sendRedirect("login.jsp");
        }
    %>
<title>goMAD-Make A Difference</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="adminevents.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body bgcolor="#383838">
     
<!--page content-->


<div class="deleteevent">
    <form action="deleteevents" method="post">
        <div class="de1">
            <h1 style="padding-top:90px;"><center>DELETE EVENT</center></h1>
            Event Name <br><input type="text" name="ename" required/><br><br>
            Event Feedback<br><textarea cols="36" placeholder="Feedback" required></textarea><br><br>
        <center><input type="submit" value="DELETE"/></center>
        </div>
    </form>
</div>


</body>
</html>