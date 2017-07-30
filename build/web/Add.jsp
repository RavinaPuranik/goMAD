<%@include file="header1.jsp"%>
<html>
    <%
    if(nm==null)
        {
        response.sendRedirect("login.jsp");
        }
    %>
    <head>
<title>goMAD-Make A Difference</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="adminevents.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    
    </style>
    </head>
<body bgcolor="#383838">
     
<!--page content-->

<div class="addevent">
    <form action="addevents" method="post">
        <div class="ae1">
            <h1 style="padding-top:0px;"><center>ADD EVENT</center></h1>
            Event Name <br><input type="text" name="ename" required/><br>
        Event Date<br><input type="date" name="edate" required/><br>
        Event Time<br><input type="time" name="etime" required/><br>
        Event Location<br><input type="text" name="elocation" required/><br>
        Event Description<br><textarea cols="36" name="edesc" placeholder="Description" required></textarea><br><br>
        
        <center><input type="submit" value="ADD"/></center>
        </div>
        
    </form>
</div>
    


</body>
</html>