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
  background-color: #ddd;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
button {
  background-color: green;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: auto;
  float:left;
}
.container {
  padding: 16px;
}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
</style>
<body>
<form action="appointment" method="post" style="width:50%; margin-left:15%;margin-top:2%;margin-bottom:2%;margin-right:15%;background-color:white;" >
  <div class="container">
    <h1>Request Doctor</h1>
    <hr>
    <label for="patname"><b>Patientname</b></label>
    <input type="text"  name="patname" required>
    <label for="ploc"><b>Location</b></label>
    <input type="text" name="ploc" required>
     <label for="doc"><b>Doctorname</b></label>
    <input type="text" name="doc" required>
     <label for="cate"><b>Category</b></label>
    <input type="text" name="cate" required>
     <label for="recc"><b>reason</b></label>
    <input type="text" name="recc" required>
    
     <div class="clearfix">
      <button type="submit" class="signupbtn" value="appointment">submit</button>
      
    </div>
  </div>
</form>
</body>
</html>

