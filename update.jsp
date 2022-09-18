<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        function demo()
        {
            
        let a=confirm("you are sure to update the data");
        return a;
        }
    </script>
    <title>Search</title>
        <link rel="stylesheet" type="text/css" href="myMenu.css">

    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="insert.css">
    <link rel="stylesheet" href="search.css">
</head>
<body>
    <%@include file="comman.jsp" %>%>
    <div class="red">
        
        <h1 >Update Data</h1>
        <form action="update.jsp"   method="post">
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
            <div class="red">
        <center>
            <form action="update.jsp" onsubmit="return demo()"method="post">
                    <input type="text" class="form-control" name="n1"  value=<%=rs1.getString(1) %> placeholder="Enter Roll Number">
                    <input type="text" class="form-control" name="n2" value=<%=rs1.getString(2) %> placeholder="Enter Name" required>
                    <input type="text" class="form-control" name="n3" value=<%=rs1.getString(3) %> placeholder="Enter Physics Marks" >
                    <input type="text" class="form-control" name="n4" value=<%=rs1.getString(4) %> placeholder="Enter Chemistry Marks" >
                    <input type="text" class="form-control" name="n5" value=<%=rs1.getString(5) %> placeholder="Enter Maths Marks" >
                    <input type="submit" name="b2" class="form-control demo btn btn-success" value="Update">
        </form>
</center>
                    </div>
<%
       }
    else 
    {
    response.sendRedirect("update.jsp?n=Data Not Found");
    }
	con.close();
}
catch(Exception e)
{
out.println(e);
}
}
    %>
    <%
String b=request.getParameter("b2");
if(b!=null)
{
    String s11=request.getParameter("n1");
    String s2=request.getParameter("n2");
    String s3=request.getParameter("n3");
    String s4=request.getParameter("n4");
    String s5=request.getParameter("n5");
Connection con=null;
Statement st=null; 
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql:///himanshu?useSSL=false&allowPublicKeyRetrieval=true","root","admin");	
      st=con.createStatement();
       st.executeUpdate("update insData set UN='"+s2+"', SMP='"+s3+"', SMC='"+s4+"', SMM='"+s5+"' where UR='"+s11+"'");
       con.close();
}
catch(Exception e)
{
out.println("<H1>"+e+"</H1>");

}
}
%>
</body>
</html>