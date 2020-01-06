<% if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) { %> 
<p align="right">Welcome <%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a></p>
<%} else { %> 
You are not logged in<br/> <a href="index.jsp">Please Login</a> 

<% } %>
