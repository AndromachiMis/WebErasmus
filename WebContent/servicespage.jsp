<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<title>Head secretary's Menu</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ErasmusApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="servicespage.jsp">Home</a></li>
      <li><a href="addstudent.jsp">Add Student</a></li>
      <li><a href="deletestudent.jsp">Delete Student</a></li>
      <li><a href="updatestudent.jsp">Update Student</a></li>
      <li><a href="studentlist.jsp">See all Students</a></li>
      <li><a href="adduniversity.jsp">Add university</a></li>
      <li><a href="updateuniversity.jsp">Update University</a></li>
      <li><a href="deleteuni.jsp">Delete University</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <h3>Welcome to administration page of ErasmusApp</h3>
  <p>In this page you have a variety of functions.</p>
</div>
</body>
</html>