<%@page import="javax.servlet.http.Cookie" %>
<%
 
    Cookie c=new Cookie("uname","");
    c.setMaxAge(0);
    response.addCookie(c);
   response.sendRedirect("Login.jsp");
%>