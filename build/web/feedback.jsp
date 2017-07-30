<!DOCTYPE html>

<%@include file="header.jsp" %>
<%
    if(nm==null)
        {
        response.sendRedirect("login.jsp");}
    %>
<html>
<title>goMAD-Make A Difference</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="feedback.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script>
            function validateForm()
            {
                var x=document.forms["myform"]["email"].value;
                var atpos=x.indexOf("@");
                var dotpos=x.lastIndexOf(".");
                if(atpos<1 || dotpos<atpos+2 || dotpos+2>x.length())
                {
                    alert("Not a valid email address");
                    return false;
                }
            }
        </script>
</head>
<body>
     <div class="form">
         <h1>FEEDBACK/SUGGESTIONS</h1>
    <br>
    <form name="myform" action="feedback" onsubmit="return validateForm()">
    <div style="float:right;margin:-20px"><img src="images/59.jpg"  height="300" width="300"/></div>
    <table height="250">
        <tr>
            <td>Name</td><td><input type="text"   value="<%=nm%>" required disabled/>*</td></tr>
        <tr>
            <td>Email-Id</td><td><input type="text" name="email"  required/>*</td></tr>
        
        <tr>
            <td>Rate Us</td>
            <td><div class="stars">

	    <input class="star star-5" id="star-5" type="radio" name="star"/>
            <label class="star star-5" for="star-5"></label>
	    <input class="star star-4" id="star-4" type="radio" name="star"/>
	    <label class="star star-4" for="star-4"></label>
	    <input class="star star-3" id="star-3" type="radio" name="star"/>
	    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star"/>
<label class="star star-2" for="star-2"></label>
	    <input class="star star-1" id="star-1" type="radio" name="star"/>
            <label class="star star-1" for="star-1"></label>
</div></td>
        </tr>
        <td>   Feedback/Suggestion</td><td><textarea cols="30" name="feedback" placeholder="Feedback" style="border:solid 1px black;" required></textarea></td></tr>
    </table>
    <br>
    <center><input type="submit" value="Submit" /></center>
    </form>
</div>
  
</body>
</html>
<%@include file="footer.jsp" %> 
