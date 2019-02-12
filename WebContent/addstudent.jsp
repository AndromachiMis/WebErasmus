<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Student</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form action="AddStudentServlet" method="POST">
<div class = "page-header">
   
   <h1>
      Add New Student Form 
      
      
   </h1>
   <p>You should fill the form in order to insert a new student in our system.</p>
   
</div>

<div class = "form-group">
<label for="username">Username:</label>
<input type="text" class="form-control" id="username" placeholder="Enter username">
</div>
<div class = "form-group">
<label for="password">Password:</label>
<input type="text" class="form-control" id="username" placeholder="Enter student's password">
</div>
<div class = "form-group">
<label for="fullname">Fullname:</label>
<input type="text" class="form-control" id="fullname" placeholder="Enter student's fullname">
</div>
<div class = "form-group">
<label for="fathername">Fathername:</label>
<input type="text" class="form-control" id="fathername" placeholder="Enter student's fathername">
</div>
<div class = "form-group">
<label for="mothername">Mothername:</label>
<input type="text" class="form-control" id="mothername" placeholder="Enter student's mothername">
</div>
<div class = "form-group">
<label for="phone">Phone:</label>
<input type="number" class="form-control" id="phone" placeholder="Enter student's phone">
</div>
<div class = "form-group">
<label for="status">Status:</label>
<input type="text" class="form-control" id="status">
<small id="statusHelp" class="form-text text-muted">In this field you should type if the student is active or inactive.</small>
</div>
<div class = "form-group">
<label for="year">Year:</label>
<input type="number" class="form-control" id="year" placeholder="Enter the year of studies">
<small id="yearHelp" class="form-text text-muted">Only numbers.</small>
</div>
<div class = "form-group">
<label for="grades">Grades:</label>
<input type="number" class="form-control" id="grades" placeholder="Enter the average of lessons">
<small id="gradesHelp" class="form-text text-muted">Only numbers.</small>
</div>
<div class = "form-group">
<label for="lessons">Lessons:</label>
<input type="number" class="form-control" id="lessons" placeholder="Enter the lessons which don't have an accessible grade">
<small id="lessonsHelp" class="form-text text-muted">Only numbers.</small>
</div>
 <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</body>
</html>