<%@include file="header.jsp" %>
<html>
    <title>Forgotten Password</title>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .forget{
     width:50%;
  background-color: whitesmoke;
 padding:15px;
    border:2px solid black;

}
.al{
    padding-left: 400px;
    padding-top: 280px;
    padding-bottom: 120px;
}
        </style>
        
    </head>
    
    <body>
        <div class="al">
        <div class="forget" >
     <h2>FIND YOUR ACCOUNT</h2>
     <hr>
     <form action="forgotpassword">
         <center>
        <table>
            <tr>  
                <td>Please enter your email address to </td>
                <td>search for your account</td>
            </tr>
            <tr>
                <td>
                    <input type="email" name="email" required/>
                </td>
               
            </tr>
            <tr>
                <td>
                    <input type="submit" value ="Search"/>
                </td>
                <td>
                <a href="login.jsp" style="text-decoration: none;"><input type="button" value="CANCEL" /></a>
                </td>
                
                    
            </tr>
        </table>
         </center>
    </form>
     
        </div>
        </div>
    </body>
</html>
<%@include file="footer.jsp" %>