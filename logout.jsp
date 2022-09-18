<%@page import="javax.servlet.http.Cookie" %>
<%
  Cookie c[] = request.getCookies();
  for(Cookie i:c)
  {
      String s=i.getName();
      if(s.equals("uname"))i.setMaxAge(0);
}
   response.sendRedirect("Login.jsp");
%>