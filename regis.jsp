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
    <title>Registration</title>
<link rel="stylesheet" href="login.css" >
<link rel="stylesheet" href="Regis.css" >
</head>
<body>
      <div id="mymenu">
        <ul>
            <li> ><a href="Login.jsp" style="color:white;text-decoration: none "> Home</a></li>  
            <li><a href="Login.jsp" style="color:white;text-decoration: none "> Login</a></li>
            <li><a href="regis.jsp" style="color:white;text-decoration: none"> Registration</a></li>
            <li>About</li>
             </ul>
    </div>
  
    <div class="red">
      <div class="alert alert-primary" role="alert">
        Registration Form
</div>
        <form action="regis1.jsp" onsubmit="return validation()" method="post">
                    <input type="text" class="form-control1" id="n1" name="un" placeholder="Enter Name">
                    <span id="na" class="text-danger font-weight-bold"></span>
                    <input type="email" class="form-control1" id="n2" name="ue" placeholder="Enter email" >
                    <span id="em" class="text-danger font-weight-bold"></span>
                    <input type="password" class="form-control1" id="n3"name="up" placeholder="Enter Password" >
                    <span id="pa" class="text-danger font-weight-bold"></span>
                    <input type="submit" class="form-control1 demo  " value="Registration">
        </form>
        </div>
            <script>
            function validation()
            {
                var reg=/^\w{4,10}$/;
                var reg1=/^\w{3,30}\@gmail|yahoo\.(\w{3}\.\w{2})$/;
                var reg2=/^\w{6,10}$/;
                var a=document.getElementById('n1').value;
                var a1=document.getElementById('n2').value;
                var a2=document.getElementById('n3').value;
                
                if(a == "")
                {
                    document.getElementById('na').innerHTML="!!please fill the name";
                    document.getElementById('na').style.color="red";
                     return false;  
                }
                if(!isNaN(a))
                {
                    document.getElementById('na').innerHTML="!!only character are allowed";
                    document.getElementById('na').style.color="red";
                     return false;  
                }
                if(a.length <=2  || a.length>=18)
                {
                    document.getElementById('na').innerHTML="!!user name length must be between 2 to 18";
                    document.getElementById('na').style.color="red";
                     return false;  
                }
                
                
                if(a1 == "")
                {
                    document.getElementById('em').innerHTML="!!please enter the Email id";
                    document.getElementById('em').style.color="red";
                     return false;  
                }
                
                if(a1.indexOf('@')<=0)   
                {
                    document.getElementById('em').innerHTML="!!@ Invalid Position";
                    document.getElementById('em').style.color="red";
                     return false;  
                }
                
                if(a1.charAt(a1.length-4)!='.')
                {
                    document.getElementById('em').innerHTML="!  .  Invalid Position";
                    document.getElementById('em').style.color="red";
                     return false;  
                }
                
                if(a2 == "")
                {
                    document.getElementById('pa').innerHTML="!!please fill the password";
                    document.getElementById('pa').style.color="red";
                     return false;  
                }
                
                if(a2.length <=5  || a2.length>=18)
                {
                    document.getElementById('pa').innerHTML="!!user password length must be between 6 to 18";
                    document.getElementById('pa').style.color="red";
                     return false;  
                }
                   
}
            </script>
</body>
</html>