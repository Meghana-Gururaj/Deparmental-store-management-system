<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
</head>
 <style media="screen">
      body{
        background-image: url(shop.jpg);
        background-repeat: no-repeat center fixed;
        background-size: 120%;
      }
    </style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

  <style media="screen">
    form {
margin:0 auto;
width:300px
}
input {
margin-bottom:3px;
padding:10px;
width: 100%;
border:1px solid #CCC
}
button {
padding:10px;
margin-bottom: 10px;
}
label {
cursor:pointer
}
#form-switch {
display:none
}
#register-form {
display:none
}
#form-switch:checked~#register-form {
display:block
}
#form-switch:checked~#login-form {
display:none
}
  </style>
<body >
<form method="post" action="login.jsp">
        <p></p>
        <br><br><br><br><br>
        <label><b>USERNAME</b></label>
        <input id="uname" name="uname" placeholder="Enter your username" type="name" ><br><br>
        <label><b>PASSWORD</b></label>
        <input id="pass" name="pass" placeholder="Enter your password" type="password" ><br><br>
        
        <button><b><a style="color:black" >LOGIN</a></b></button>
 
</form>

<form method="post" action="signup.html">
<button><b><a style="color:black" href="signup.html">SIGNUP</a></b></button>

</form>
</body>
</html>