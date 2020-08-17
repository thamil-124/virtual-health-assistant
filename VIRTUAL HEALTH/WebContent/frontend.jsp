<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
   background-repeat:no-repeat;
background-size:cover;
height:100%;
width:100%;
  background-image:url("https://www.visaandmigration.com/blog/wp-content/uploads/2020/01/BV-Acharya-3.jpg");
}
.navbar {
  overflow: hidden;
  background-color: #333;
}
.navbar a {
  float: right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown {
  float: right;
  overflow: hidden;
}
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdown-content a:hover {
  background-color: #ddd;
}
.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
<div class="navbar">
 <a href="login.jsp">Login</a>
  <div class="dropdown">
    <button class="dropbtn">Signup 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="signupdoctor.jsp">Doctor</a>
      <a href="signuppatient.jsp">Patient</a>
      <a href="signuplabtechnician.jsp">LabTechnician</a>
    </div>
  </div> 
 <a href="#home">Contact</a>
  <a href="#news">About</a>
  <a href="#news">Home</a> </div>
</body>
</html>
