<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
<title>goMAD-Make A Difference</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="dstyle.css">
<link rel="stylesheet" href="style.css">
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
<style>
    input[type=text]{
        border-radius:5px;
        width: 40%;
        padding: 10px 20px;
    margin: 8px 0;
    display: inline-block;
    }
    input[type=text]:focus {
    border: 3px solid #555;
    
    
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
body {font-family: "Lato", sans-serif}
.mySlides {display: none;}
ms{height:1000px;}
.image{
    padding-top:97px;
    
}
  input[type=submit],input[type=button]{
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    background-color:black;
    color:white;
    font-weight:800;
    height:40px;
    width:150px;
    border:2px solid white;
    border-radius:25px;
    font-size:15px;
}

input[type=submit]:hover {
    background-color:white;
    color: black;
    input[type=button]:hover {
    background-color:white;
    color: black;
}
  
</style>
<body>
    
<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:-7px;">
    <div class="image"> <img src="images/13.jpg"width="1360"></div>
  <div class="w3-grey" style="margin-top:-15px;padding-top:0px;">
     <form action="ngonames.jsp">
    <div class="container">
        <font color="black" size="5">Select the Category:&nbsp;&nbsp;</font>

    
         <span class="abc">
    <select name="category" class="category">
        
          <option >Health Care</option>
                  <option>Women Empowerment</option>
                  <option>Special Needs</option>
                  <option>Children</option>
                  <option>Elderly Care</option>
        </select>
           </span>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="submit" value="Find The NGOs" />
        
        
        

              </div>
</form>
  </div>
  <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
      
    <h2 class="w3-wide" style="font-family:bj;font-size:40px;">Donate</h2>
    <p class="w3-opacity"><i>Share The happiness</i></p>
    <p class="w3-justify">
    <center><b>"It's good to be blessed.It's better to be a blessing?"</b></center><br>
We give you the opportunity to become a blessing in others lives! goMAD-make A Difference welcomes donations from people looking forward to contribute to the society. With your generous donation, we will be able to further scale our social activities and work on more social causes. Let's come together and make a difference!
Here is a golden opportunity for those who want to do something for a better society. Instead of giving money to street children, we can provide systematic grooming, performance analysis and capacity building program.
Your contribution of a little amount can convert into a blessing and help the child become a big achiever in life. Any suggestions and tips from your side as a mentor can also be shared with them.
You can donate online to various NGOs and help children,women,special people,elderly people etc.The list of NGOs given on our website are verified by the experts and trustworthy for making any donation.
<br><br><center><b>"Your bit of contribution can help bring a big change!"</b></center>
</div>


<div class="form">
    <form name="myform" action="donation" onsubmit="return validateForm()">
    <div style="float:right;padding:0px;margin:0px;"><img src="images/31.jpg"  height="360" width="400"/></div>
    <input type="text" placeholder="Enter name" name="name" required/>*
    <br><br>
    <input type="text" placeholder="Enter email id"  name="email" required/>*<br><br>
    <input type="text"  placeholder="Enter phone no"  name="phone" required/>*
    <br><br>
    <textarea cols="60" name="denq" placeholder="Donation Enquiry" required></textarea>
    <br><br>
    <input type="submit" value="Submit"/>
    </form>
</div>
  
</body>
</html>
<%@include file="footer.jsp" %>