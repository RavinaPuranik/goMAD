<%-- 
    Document   : ReportAnIncident
    Created on : Apr 29, 2017, 11:30:33 PM
    Author     : ADMIN
--%>
<%@include file="header.jsp" %>
<%
    if(nm==null)
        {
        response.sendRedirect("login.jsp");}
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="complaint.css">
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
    <body bgcolor="black">
        
        <div class="rai">
    <form action="MobileComplaintMail" method="post" name="myform" onsubmit="return validateForm()">
        
            <h1 style="padding-top:120px;"><center>Mobile/SIM Card</center></h1>
            <hr >
            <table width="1000" height="300" style="padding-left:350px;">
                <tr><td>Category</td>
                            <td><select name="category">
                                    <option>Mobile</option>
                                    <option>SIM Card</option>
                                    
                        </select>
                                </td>
                </tr>
                <tr>
                    <td>IMEI/ESN No.</td>
                    <td><input type="text" name="imeino" required/></td>
                <tr>
                    <tr>
                    <td>Lost Mobile No.</td>
                    <td><input type="text" name="mobileno" pattern="[1-9]{1}[0-9]{9}" required/></td>
                </tr>
                    <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" required/></td>
                </tr>
                <tr>
                    <td>Father's Name</td>
                    <td><input type="text" name="fname" required/></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><select name="states" >
                    <option >------------Select State------------</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
            </select>
                </tr>
                <tr><td>City</td><td><input type="text" name="city" required></td></tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" required/></td>
                </tr>
                <tr>
                    <td>Location(where mobile/SIM was lost/stolen)</td>
                    <td><input type="text" name="location" required/></td>
                </tr>
                    <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact" pattern="[1-9]{1}[0-9]{9}" required/></td>
                </tr>
                <tr>
                    <td>Email Id</td>
                    <td><input type="email" name="email" required/></td>
                </tr>
                
            </table>
                <br>
                <center><input type="submit" value="SEND"/>
                    &nbsp;<a href="complaint.jsp" style="text-decoration: none;"><input type="button" value="CANCEL" "/></a></center>
        </form> </div>
        
   

    </body>
</html>