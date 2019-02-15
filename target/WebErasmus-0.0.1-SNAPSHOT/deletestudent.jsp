<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form action="DeleteStudentServlet" method="POST">
<div class = "page-header">
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
   
   <h1>
      Delete Student     
      
   </h1>
   <p>In order to delete a student from our system insert the id.</p>
  </div>
  
   
   <div class = "form-group">
<label for="id">Student Id:</label>
<input type="text" class="form-control" id="id" placeholder="Student's Id" required>
<small id="statusHelp" class="form-text text-muted">Insert ONLY the id of the Student.</small>
</div>
<button type="submit" class="btn btn-primary">Submit</button>  

</form>
</body>
</html>