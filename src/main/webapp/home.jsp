<%@page contentType="text/html" pageEncoding="UTF-8" import="java.net.InetAddress"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Welcome to Home Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/img-01.jpg'); padding-left: 950px;padding-bottom: 950px;">
			<div  class="container-welcomelogin">
				<p style="border-right-style: solid;border-right-width: -1000px;margin-left: -1000px;font-size: 24px;line-height: 1.3;letter-spacing: 0.133em;font-weight: 900;font-style: normal;" align="right">Welcome <%=session.getAttribute("userid")%> <br/><a href="logout.jsp">Log out</a></p>
</div>
<% if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) { %> 

<%} else { %> 

You are not logged in<br/> <a href="/LoginApp">Please Login</a> 

<% } %>

</div>
		<div style="padding-left: 950px;padding-bottom: 950px;">
<h3> Server Side IP Address </h3><br>
<%String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName());%><br>
<%out.println("Server IP Address :: "+ip);%>

<h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br> 	
</div>	
</div>
