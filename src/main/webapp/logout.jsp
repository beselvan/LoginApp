<%
session.setAttribute("userName", null);
session.invalidate();
response.sendRedirect("/LoginApp");
%>
