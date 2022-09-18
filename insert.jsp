<%@page import="java.sql.*" %>
<%
  Cookie c[] = request.getCookies();
  boolean flag=false;
  for(Cookie i:c)
  {
      String s=i.getName();
      if(s.equals("uname"))flag=true;
  }
  if(flag==false){
    response.sendRedirect("Login.jsp");
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
         

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert</title>

    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="insert.css">

</head>
<body>
    <%@include file="comman.jsp" %>
    <div class="red">
        <h1 >Insert Form</h1>
        <form action="insert.jsp" method="post">
                    <input type="text" class="form-control" name="ur" placeholder="Enter Roll Number">
                    <input type="text" class="form-control" name="un" placeholder="Enter Name" required>
                    <input type="text" class="form-control" name="upm" placeholder="Enter Physics Marks" >
                    <input type="text" class="form-control" name="ucm" placeholder="Enter Chemistry Marks" >
                    <input type="text" class="form-control" name="umm" placeholder="Enter Maths Marks" >
                    <input type="submit" name="b1" class="form-control demo btn btn-success" value="Insert">
        </form>
        </div>
    <%
        String b1=request.getParameter("b1");
        if(b1!=null)
        {
String  s1=request.getParameter("ur");
String  s2=request.getParameter("un");
String  s3=request.getParameter("upm");
String  s4=request.getParameter("ucm");
String  s5=request.getParameter("umm");
out.println("<html>");
out.println("<body>");
Connection con=null;
Statement st=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:///himanshu?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
	st=con.createStatement();
	
	int a=st.executeUpdate("insert into insData values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(a!=0){
    %>
    <script>alert("data inserted")</script>>
    <%
}
response.sendRedirect("showAll.jsp");
	con.close();
}
catch(Exception e)
{
out.println(e);
}
    }
    %>
</body>
</html>