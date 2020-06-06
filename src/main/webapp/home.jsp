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
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/img-01.jpg');">
			<div>
				<p style="border-right-width: -1000px;font-size: 24px;line-height: 1.3;letter-spacing: 0.133em;font-weight: 900;font-style: normal;margin-bottom: 450px;margin-left: 1000px;" align="right">
				<font color="white">Welcome <%=session.getAttribute("userName")%> <br/>
				<a href="logout.jsp">Log out</a></font></p>
			</div>

			<div>
				<p style="margin-bottom: 40px;margin-right: 40px;margin-left: -10px; margin-top: -300px;"><font color="white" style=" padding-right: -200; padding-left: 250px; ">Generate Login Report</font></p>
			</div>



		<p style="padding-right: -200"><font color="white">
		<%String ip = "";
		InetAddress inetAddress = InetAddress.getLocalHost();
		ip = inetAddress.getHostAddress();
		out.println("Server Host Name :: "+inetAddress.getHostName());%><br>
		<%out.println("Server IP Address :: "+ip);%></br>
		<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %>
		</font></p>



</div>
</div>
</body>
