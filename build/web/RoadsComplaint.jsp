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
        <title>Report An Incident</title>
    </head>
    <body bgcolor="black">
        
        <div class="rai">
    <form action="RoadComplaintMail" method="get">
        <div class="ae1">
            <h1 style="padding-top:120px;"><center>Roads & Footpaths</center></h1>
            <hr >
            <table width="1000" height="300" style="padding-left:350px;">
                <tr>
                    <td>Problem:</td>
                    <td>
                <select name="problem">
                <option>Filling of Potholes & Charies</option>
                <option>Leveling of Roads Surface</option>
                <option>Remove Fallen Trees</option>
                <option>Repairing of Damage Divider's Railing</option>
                <option>Damaged Footpaths</option>
                <option>Other</option>
            </select>
                    </td>
                </tr>
                <tr>
                    <td>Description of Problem</td>
                    <td><textarea name="pdesc" required></textarea></td>
                    
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
                <tr><td>Area</td><td><input type="text" name="area" required></td></tr>
                <tr><td>Ward</td><td><input type="text" name="ward" required></td></tr>
            </table>
                <br>
                <center><input type="submit" value="SEND"/>
                    &nbsp;<a href="complaint.jsp" style="text-decoration: none;"><input type="button" value="CANCEL" "/></a></center>
        </div>
        
    </form>
</div>
    </body>
</html>
