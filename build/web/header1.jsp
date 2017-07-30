<html>
    <head>
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
    </head>
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
            out.println("<a href=endsession style='text-decoration:none;'>Logout</a><br>");
            out.println("</div>");
            out.println("<div style='float:right;padding-right:20px;position:relative;font-size:20px;margin-top:8px;color:red;'>");
            out.println("<a>Welcome  "+nm+"</a>");
            out.println("</div>");
            
            
    }

    
%>
<br><br>
      <div style="float:right;padding-right:60px;">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    
   
    <a href="adminhome.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
     <a href="events.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">VIEW EVENTS</a>
     <a href="viewparticipant.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">VIEW PARTICIPANTS</a>
     <a href="viewfeedback.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">VIEW FEEDBACK</a>
    <div class="w3-dropdown-hover w3-hide-small">
 <button class="w3-padding-large w3-button" >UPDATE <i class="fa fa-caret-down" style="width:50px;text-align: left;"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="Add.jsp"  class="w3-bar-item w3-button">Add Events</a>
        <a href="Delete.jsp" class="w3-bar-item w3-button">Delete Events</a>
        <a href="addngo.jsp" class="w3-bar-item w3-button">Add NGO's</a>
      </div>
    
</div>
        <%
    //session.setMaxInactiveInterval(90);
    String v1="",v2="", v3="";
    //step-1 (fetch all the cookies)
    Cookie ck[]=request.getCookies();
    //step-2 (search the desired one)
    if(ck!=null){
    for(int i=0; i<ck.length; i++){
        String name=ck[i].getName();
        if(name.equals("emailid")){
            v1=ck[i].getValue();
        }else if(name.equals("password")){
            v2=ck[i].getValue();
        }//else if(name.equals("uname")){
           // v3=ck[i].getValue();}
        
    }
    
    }%> 
   
     
   
    
    


      
    
  </div>
    </div>
</div>
    </body>
    </html>