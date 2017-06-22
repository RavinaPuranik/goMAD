
<% String n=(String)session.getAttribute("uname");
if(n!=null)
   
       { 
    out.println("already login");
    response.sendRedirect("index.jsp");
}

//session.setMaxInactiveInterval(90);
    String v1="",v2="";
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
        }//else if(name.equals("utype")){
           //v3=ck[i].getValue();}
        
    }
    
    } 

%>

<!DOCTYPE html>
<html >

<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/x-icon" href="https://production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
  <link rel="mask-icon" type="" href="https://production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
  <title>Login page</title>
  
  
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      <style>
      body{
	margin:0;
	color:#6a6f8c;
	background:lightgray;
	font:600 16px/18px 'Open Sans',sans-serif;
        
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
	width:100%;
	margin:auto;
	max-width:525px;
	min-height:670px;
	position:relative;
	background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;

	box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}
.login-html{
	width:100%;
	height:100%;
	position:absolute;
	padding:90px 70px 50px 70px;
	background-color:black;
}

.login-html .sign-in-htm,
.login-html .sign-up-htm{
	top:0;
	left:0;
	right:0;
	bottom:0;
	position:absolute;
	-webkit-transform:rotateY(180deg);
	        transform:rotateY(180deg);
	-webkit-backface-visibility:hidden;
	        backface-visibility:hidden;
	-webkit-transition:all .4s linear;
	transition:all .4s linear;
       
}
.login-html .sign-in,
.login-html .sign-up,
.login-form .group .check{
	display:none;
}
.login-html .tab,
.login-form .group .label,
.login-form .group .button{
	text-transform:uppercase;
}
.login-html .tab{
	font-size:22px;
	margin-right:15px;
	padding-bottom:5px;
	margin:0 15px 10px 0;
	display:inline-block;
	border-bottom:2px solid transparent;
}
.login-html .sign-in:checked + .tab,
.login-html .sign-up:checked + .tab{
	color:#fff;
	border-color:#1161ee;
}
.login-form{
	min-height:345px;
	position:relative;
	-webkit-perspective:1000px;
	        perspective:1000px;
	-webkit-transform-style:preserve-3d;
	        transform-style:preserve-3d;
}
.login-form .group{
	margin-bottom:15px;
}
.login-form .group .label,
.login-form .group .input,
.login-form .group .button{
	width:100%;
	color:#fff;
	display:block;
}
.login-form .group .input,
.login-form .group .button{
	border:none;
	padding:15px 20px;
	border-radius:25px;
	background:rgba(255,255,255,.1);
}
.login-form .group input[data-type="password"]{
	text-security:circle;
	-webkit-text-security:circle;
}
.login-form .group .label{
	color:#aaa;
	font-size:12px;
}
.login-form .group .button{
	background:#1161ee;
}
.login-form .group label .icon{
	width:15px;
	height:15px;
	border-radius:2px;
	position:relative;
	display:inline-block;
	background:rgba(255,255,255,.1);
}
.login-form .group label .icon:before,
.login-form .group label .icon:after{
	content:'';
	width:10px;
	height:2px;
	background:#fff;
	position:absolute;
	-webkit-transition:all .2s ease-in-out 0s;
	transition:all .2s ease-in-out 0s;
}
.login-form .group label .icon:before{
	left:3px;
	width:5px;
	bottom:6px;
	-webkit-transform:scale(0) rotate(0);
	        transform:scale(0) rotate(0);
}
.login-form .group label .icon:after{
	top:6px;
	right:0;
	-webkit-transform:scale(0) rotate(0);
	        transform:scale(0) rotate(0);
}
.login-form .group .check:checked + label{
	color:#fff;
}
.login-form .group .check:checked + label .icon{
	background:#1161ee;
}
.login-form .group .check:checked + label .icon:before{
	-webkit-transform:scale(1) rotate(45deg);
	        transform:scale(1) rotate(45deg);
}
.login-form .group .check:checked + label .icon:after{
	-webkit-transform:scale(1) rotate(-45deg);
	        transform:scale(1) rotate(-45deg);
}
.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
	-webkit-transform:rotate(0);
	        transform:rotate(0);
}
.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
	-webkit-transform:rotate(0);
	        transform:rotate(0);
}

.hr{
	height:2px;
	margin:60px 0 50px 0;
	background:rgba(255,255,255,.2);
}
.foot-lnk{
	text-align:center;
}
    </style>
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
  
  <script>
  window.console = window.console || function(t) {};
</script>

  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

</head>

<body translate="no" >
<!-- rgba(40,57,101,.9) -->
  <div class="login-wrap">
     
	<div class="login-html">
            <a href="index.jsp"> <img src="images/10.jpg" height="20" width="20"/></a>&nbsp;&nbsp;
		<input id="tab-1" type="radio" name="tab" class="sign-in"checked/><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up" /><label for="tab-2" class="tab">Sign Up</label>
                
                <div class="login-form">
			<div class="sign-in-htm">
                             <form action="verifyuser" >
				<div class="group">
					<label for="user" class="label">Email Address</label>
					<input id="user" type="text" class="input" name="email" value="<%=v1%>" required/>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="pwd" value="<%=v2%>" required/>
				</div>
                            <div class="group">
					<label for="user" class="label">UserType</label>
                                        <select  class="input" name="utype"/> <option>User</option><option>owner</option></select>
				</div>
			
                            
				<div class="group">
					<input id="check" type="checkbox" class="check" name="save" value="yes" checked/>
					<label for="check"><span class="icon" ></span>Remember Me</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In"/>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="forgotpassword.jsp">Forgot Password?</a>
				</div>
                            </form>
			</div>
			<div class="sign-up-htm">
                            <form name="myform" action="saveuser" onsubmit="return validateForm()">
                                <div class="group">
					<label for="pass" class="label">Name</label>
					<input id="pass" type="text" class="input" name="uname" required/>
				</div>
				<div class="group">
					<label for="user" class="label">Email Address</label>
					<input id="user" type="text" class="input" name="email" required/>
				</div>
                                 <div class="group">
					<label for="pass" class="label">Phone number</label>
					<input id="pass" type="text" class="input" name="phno" pattern="[1-9]{1}[0-9]{9}" required/>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name ="pwd" required/>
				</div>
				<div class="group">
					<label for="pass" class="label">UserType</label>
                                        <select id="pass" class="input" name ="utype"/><option>User</option><option>Owner</option></select>
				</div>
                                
                  			<div class="group">
					<input type="submit" class="button" value="Sign Up"/>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
                            </form>
			</div>
		</div>
	</div>
</div>
  
  
  
  
  

</body>
</html>
 