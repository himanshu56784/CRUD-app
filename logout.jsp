<%@page import="javax.servlet.http.Cookie" %>
<%
    Cookie ck=new Cookie("uname","");
    ck.setMaxAge(0);
    response.sendRedirect("Login.jsp");
%>