<html>
<title>goMAD-Make A Difference</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none;}
ms{height:1000px;}
</style>
<body>
    <!-- Navbar -->
<div class="w3-top">
    
  <div class="w3-bar w3-black w3-card-2" style="height:90px;">
      <div class="gm"><div class="g">go</div><span class="m">MAD</span></div>
      <%
        String nm=(String)session.getAttribute("uname");
        
    if(nm==null)
               { out.println("<div style='float:right;padding-right:30px;font-size:20px;color:white;padding-top:5px;'>");
            out.println("<a href='login.jsp' style='text-decoration:none;'>Login</a>");
            out.println("</div>");}
    else
         {
            out.println("<div style='float:right;padding-right:20px;position:relative;font-size:18px;margin-top:9px;color:white'>");
            out.println("<a href='endsession' style='text-decoration:none;'>Logout</a><br>");
            out.println("</div>");
            out.println("<div style='float:right;padding-right:20px;position:relative;font-size:20px;margin-top:8px;color:red;'>");
            out.println("<a>Welcome  "+nm+"</a>");
            out.println("</div>");
            
            
    }

    
%>
<br><br>
      <div style="float:right;padding-right:60px;">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    
   
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="events1.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">EVENTS</a>
    <a href="complaint.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">COMPLAINT</a>
    <a href="savior.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SAVIOUR</a>
    <a href="donation.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">DONATE</a>
    <div class="w3-dropdown-hover w3-hide-small">
 <button class="w3-padding-large w3-button" >MORE <i class="fa fa-caret-down" style="width:67px;text-align: left;"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="SwacchBharat.jsp" class="w3-bar-item w3-button">SWACHH BHARAT</a>
        <a href="feedback.jsp" class="w3-bar-item w3-button">FEEDBACK</a>
        <a href="about.jsp" class="w3-bar-item w3-button">ABOUT US</a>
        </div>
    </div>
      </div>
      

      
    
  </div>
</div>
    </body>
    </html>