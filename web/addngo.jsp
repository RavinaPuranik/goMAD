<%@include file="header1.jsp" %>
<html>
    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="adminevents.css"/>
<title>ADMIN LOGIN</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="adminevents.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body bgcolor="#383838">
<div class="addevent">
    <form action="addngo">
        <div class="ae1">
            <h1 style="padding-top:30px;"><center>ADD NGO's</center></h1>
             Name <br><input type="text" name="name" required/><br>
             Link <br><input type="text" name="link" required/><br>
        Category <br><select  name="cat" style="height:40px;">
          <option>Health Care</option>
                  <option>Women Empowerment</option>
                  <option>Special Needs</option>
                  <option>Children</option>
                  <option>Elderly Care</option>
        </select><br><br>
        NGO's Details <br><textarea cols="36" name="edesc" placeholder="Description"></textarea><br><br>
        
        <center><input type="submit" value="ADD"/></center>
        </div>
        
    </form>
</div>
    </a>
</body>
</html>