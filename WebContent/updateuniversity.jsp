<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update university form</title>
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
<form action="UpdateUniversitiesServlet" method="POST">



<div class = "page-header">
   
   <h1>
      Update a University Form 
      
      
   </h1>
   <p>You should fill the form in order to update the details of a collaborating University.</p>
   
</div>

<div class = "form-group">
<label for="id">University's id:</label>
<input type="number" class="form-control" id="id" placeholder="Enter the id of the University you want to update" required>
</div>
<div class = "form-group">
<label for="name">Name:</label>
<input type="text" class="form-control" id="name" placeholder="Enter the (new) name of the University" required>
</div>
<div class = "form-group">
<label for="location">Location:</label>
<input type="text" class="form-control" id="location" placeholder="Enter university's (new) location" required>
</div>
<div class = "form-group">
<label for="num_acceptants">Number of acceptants:</label>
<input type="number" class="form-control" id="num_acceptants" placeholder="Enter the (new) number of acceptants for the University" required>
</div>
<button type="submit" class="btn btn-primary">Submit</button>

</form>
</body>
</html>