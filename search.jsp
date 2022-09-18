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
    <title>Search</title>   
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="search.css">
</head>
<body>
    <%@include file="comman.jsp" %>
    <div class="red">
        
        <h1 >Search Data</h1>
        <form action="search.jsp" method="post">
            <%
String s2=request.getParameter("n");
if(s2!=null)
{
            %>
              <div class="alert alert-danger" mrole="alert">
                  <%= s2 %>
                </div>
            <%
}
            %>
      <input class="form-control" type="text" name="ur" placeholder="Enter Roll Number">
       <input class="demo form-control" type="submit" name="b1" value="search">
    
    </form>
    </div>
    <%
    
String s1=request.getParameter("b1");
if(s1!=null)
{
 Connection con=null;
Statement st=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:///himanshu?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
	st=con.createStatement();
	ResultSet rs1=st.executeQuery("select * from insData where UR='"+request.getParameter("ur")+"'");
	if(rs1.next())
	{
            %>
        <center>
            <table cellpadding='15px'>
                <tr><td><label id='label2'> Roll Number </label></td>
                    <td><label id='label2'> Name </label></td>
                    <td><label id='label2'> Physics Marks </label></td>
                    <td><label id='label2'> Chemistry Marks </label></td>
                    <td><label id='label2'> Maths Marks </label></td></tr></center>
       <tr><td> <%=rs1.getString(1) %> </td>
           <td><%=rs1.getString(2) %></td>
           <td> <%=rs1.getString(3) %> </td>
           <td> <%=rs1.getString(4) %> </td
           ><td><%=rs1.getString(5) %></td></tr>
<%
       }
    else 
    {
    response.sendRedirect("search.jsp?n=Data Not Found");
    }
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