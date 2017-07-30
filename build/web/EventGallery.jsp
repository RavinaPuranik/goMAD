<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
<style>
body {font-family: "Raleway", Arial, sans-serif;
background-color:silver;
}
img{
    
		   	margin-bottom: 10px;
		   }  
                   .sld{
                       margin-top:200px;
                       margin-left: 125px;
                   }
		.slides {  
                      
			-webkit-transition: all .3s ease-out;  
			-moz-transition: all .3s ease-out;  
			-o-transition: all .3s ease-out;  
			transition: all .3s ease-out; 
                        border:2px solid black;
		}  
		
.w3-row img {margin-bottom: -8px}
</style>
<body >

<!-- !PAGE CONTENT! -->
<div class="w3-content" style="max-width:1500px;padding-top:143px;">

    <center><H1>EVENT GALLERY</H1></center>
    <BR>
  <!-- Photo Grid -->
  
  <div class="w3-row" style="width:1000px;margin-left:200px;padding-bottom:50px;">
    <div class="w3-half">
      <img src="images/55.jpg" style="width:100%" class="slides">
      <img src="images/53.jpg" style="width:100%" class="slides">
      <img src="images/51.jpg" style="width:100%" class="slides">
    </div>

    <div class="w3-half">
      <img src="images/52.jpg" style="width:100%" class="slides">
      <img src="images/49.jpg" style="width:100%" class="slides">
      <img src="images/47.jpg" style="width:100%" class="slides">
      <img src="images/54.jpg" style="width:100%" class="slides" height="287">
    </div>
      
  
  
  </div>
</div>



</body>
</html>
