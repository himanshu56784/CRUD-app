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
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" type="text/css" href="Regis.css">
</head>
<body>
    <div id="mymenu">
        <ul>
            <li> <a href="Login.jsp" style="color:white;text-decoration: none "> Home</a></li>  
            <li><a href="Login.jsp" style="color:white;text-decoration: none "> Login</a></li>
            <li><a href="regis.jsp" style="color:white;text-decoration: none"> Registration</a></li>
            <li>About</li>
             </ul>
    </div>
    <div class="red">
        <div class="alert alert-dark" role="alert">
        Login Form
</div>
        <form action="login1.jsp" method="post">
     <center>
         <% 
                 String s=request.getParameter("s");
                 String a=request.getParameter("s1");
                 if(s!=null)
                 {
             %>
                 <div class="alert alert-success" role="alert">
                  <%= s %>
                </div>  
                 <%
                 }
                 if(a!=null)
                 {
                 %>
                   <div class="alert alert-danger" mrole="alert">
                  <%= a %>
                </div>  
               <%
                 }
               %>
                         <input type="text" class="form-control1" name="un" placeholder="Enter Name">
                 <input type="password" class="form-control1" name="up" placeholder="Enter Password" >
                    <input type="submit" class="form-control1 demo btn btn-success" value="Login">
    
         </center>
    </form>
    </div>
                         <script>
 
                         </script>
    
</body>
</html>