<%@page import="java.sql.*" %>
<%
String s1=request.getParameter("un");
String s2=request.getParameter("up");
out.println("<html>");
out.println("<body>");
Connection con=null;
Statement st=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/harsh?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
	st=con.createStatement();
	
	ResultSet rs1=st.executeQuery("select * from server where un='"+s1+"' AND uc='"+s2+"'");
	if(rs1.next())
	{
            Cookie ck=new Cookie("uname",s1);
            ck.setMaxAge(60*30);
            response.addCookie(ck);
        response.sendRedirect("mymenu.jsp");
	}
	else
	{
                       response.sendRedirect("Login.jsp?s1=Invalid user name AND password");
	}
	con.close();
}
catch(Exception e)
{
out.println(e);
}
%>