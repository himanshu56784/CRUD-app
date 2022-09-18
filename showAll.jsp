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
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShowAll</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" type="text/css" href="myMenu.css">
</head>
<body>
<%@include file="comman.jsp" %>
<%
Connection con=null;
Statement st=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:///himanshu?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
	st=con.createStatement();
	ResultSet rs1=st.executeQuery("select * from insData");
        %>
    <center>
        <table cellpadding='15px'>
            <tr>
                <td><label id='label2'> Roll Number </label></td>
                <td><label id='label2'> Name </label></td>
                <td><label id='label2'> Physics Marks </label></td>
                <td><label id='label2'> Chemistry Marks </label></td>
                <td><label id='label2'> Maths Marks </label></td>
            </tr>
  <%      while(rs1.next())
	{
            %>
       <tr>
           <td> <%= rs1.getString(1) %> </td>
      <td> <%= rs1.getString(2) %> </td>
       <td> <%= rs1.getString(3) %> </td>
       <td> <%= rs1.getString(4) %> </td>
       <td> <%= rs1.getString(5) %> </td>
            </tr>
<%	
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>  
        </table>
    </center>
</body>
</html>