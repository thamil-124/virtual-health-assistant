<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1; 
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #f1f1f1;
  outline: none;
}
hr {
  border: 1px solid #ddd;
  margin-bottom: 25px;
}
button {
  background-color: green;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.cancelbtn {
  padding: 14px 20px;
  background-color: red;
}
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
.container {
  padding: 16px;
}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>
<form  action="lab"  method="post" style="width:50%; margin-left:15%;margin-top:2%;margin-bottom:2%;margin-right:15%;background-color:white;"  style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <p> Lab Technician Registration Form</p>
    <hr>
     <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Entername" name="username" required>
    <label for="password"><b>Password</b></label>
    <input type="password"  placeholder="Enter Password" name="password" required>
    <label for="mail"><b>Email</b></label>
    <input type="text" placeholder="Enter Email"  name="mail" required>
    <label for="gender"><b>Gender</b></label>
     <input type="text" list="clicl"placeholder="select"   name="gender" required>
<datalist  id="clicl">    
  <option value="Male"/>
  <option value="Female"/>
  <option value="Others"/>
</datalist>
    <label for="age"><b>Age</b></label>
    <input type="text" placeholder="Enter Age"  name="age" required>
     <label for="Contact"><b>Contact</b></label>
    <input type="text" placeholder="Enter Number"  name="Contact" required>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    <div class="clearfix">
      <button type="button" class="cancelbtn"><a href="frontend.jsp" style="color:white;">Cancel</a></button>
      <button type="submit" class="signupbtn" value="lab">signup</button>
    </div>
  </div>
</form>
</body>
</html> 