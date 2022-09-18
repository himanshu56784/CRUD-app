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
    <title>Delete</title>
    <script type="text/javascript">
        function validation()
        {
            a=document.getElementById('b1').value;
            if(a == "Delete")
            {
                return confirm("you are sure to delete data");
            }
            return false;
        }
    </script>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="insert.css">
</head>
<body>
    <%@include file="comman.jsp" %>
    <div class="red">
        
        <h1 >Delete Data</h1>
        <form action="Delete.jsp" onsubmit="return validation()" method="post">
      <input class="form-control" type="text" name="ur" placeholder="Enter Roll Number">
       <input class="demo form-control" type="submit" id="b1" name="b1" value="Delete">
    </form>
    </div>
    <%
        String s2=request.getParameter("b1");
    if(s2!=null)
    {
        String s1=request.getParameter("ur");
out.println("<html>");
out.println("<body>");
Connection con=null;
Statement st=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:///himanshu?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
	st=con.createStatement();
	
	st.executeUpdate("delete from insData where UR='"+s1+"'");
        out.print("<script>confirm('data Deleted')</script>");
                
                       response.sendRedirect("Delete.jsp");
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