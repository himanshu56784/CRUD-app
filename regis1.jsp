<%@page import="java.sql.*" %>
<%
String  s1=request.getParameter("un");
String  s2=request.getParameter("ue");
String  s3=request.getParameter("up");
Connection con=null;
Statement st=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:///harsh?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
	st=con.createStatement();
	
	st.executeUpdate("insert into server values('"+s1+"','"+s2+"','"+s3+"')");
	response.sendRedirect("Login.jsp?s=Registrastion Succesful");
	con.close();
}
catch(Exception e)
{
out.println(e);
}
%>