<%@page contentType="text/html" pageEncoding="UTF-8" import="java.net.InetAddress"%> 
<!DOCTYPE html> 
<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title> Java Simple Login Web App</title> </head> 


<body bgcolor="#b4f8f7"> 

<form method="post" action="login.jsp"> 
<center> 
	<table border="0" width="30%" cellpadding="3">
	<thead> <tr> <th colspan="2">Login Page</th> </tr> </thead> 
	<tbody> 
	<tr> <td>Username</td><td><input type="text" name="userName" value="" /></td> </tr> 
	<tr> <td>Password</td> <td><input type="password" name="password" value="" /></td></tr> 
	<tr> <td><input type="submit" value="Login" /></td><td><input type="reset" value="Reset" /></td> </tr> 
	<tr> <td colspan="2">New User <a href="register.jsp">Register Here</a></td> </tr> 
	</tbody> 
	</table> 
	
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<h3> Server Side IP Address </h3><br>
<%String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName());%><br>
<%out.println("Server IP Address :: "+ip);%>

<h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br> 	
	
</center> 
</form>
</body> 
