<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form action="UpdateStudentServlet" method="POST">
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
<div class = "page-header">
   
   <h1>
      Update a Student Form 
      
      
   </h1>
   <p>You should fill the form in order to update the details of a student.</p>
   
</div>


<div class = "form-group">
<label for="id">Student's id:</label>
<input type="number" class="form-control" id="id" placeholder="Enter the id of the Student you want to update" required>
</div>
<div class = "form-group">
<label for="username">Username:</label>
<input type="text" class="form-control" id="username" placeholder="Enter student's (new) username" required>
</div>
<div class = "form-group">
<label for="password">Password:</label>
<input type="text" class="form-control" id="password" placeholder="Enter student's (new) password" required>
</div>
<div class = "form-group">
<label for="fullname">Fullname:</label>
<input type="text" class="form-control" id="fullname" placeholder="Enter student's (new) fullname" required>
</div>
<div class = "form-group">
<label for="fathername">Fathername:</label>
<input type="text" class="form-control" id="fathername" placeholder="Enter student's (new) fathername" required>
</div>
<div class = "form-group">
<label for="mothername">Mothername:</label>
<input type="text" class="form-control" id="mothername" placeholder="Enter student's (new) mothername" required>
</div>
<div class = "form-group">
<label for="phone">Phone:</label>
<input type="number" class="form-control" id="phone" placeholder="Enter student's (new) phone" required>
</div>
<div class = "form-group">
<label for="status">Status:</label>
<input type="text" class="form-control" id="status" required>
<small id="statusHelp" class="form-text text-muted">In this field you should type if the student is active or inactive.</small>
</div>
<div class = "form-group">
<label for="year">Year:</label>
<input type="number" class="form-control" id="year" placeholder="Enter the (new) year of studies" required>
<small id="yearHelp" class="form-text text-muted">Only numbers.</small>
</div>
<div class = "form-group">
<label for="grades">Grades:</label>
<input type="number" class="form-control" id="grades" placeholder="Enter the (new) average of lessons" required>
<small id="gradesHelp" class="form-text text-muted">Only numbers.</small>
</div>
<div class = "form-group">
<label for="lessons">Lessons:</label>
<input type="number" class="form-control" id="lessons" placeholder="Enter the (new) number of lessons that student doesn't have an accessible grade" required>
<small id="lessonsHelp" class="form-text text-muted">Only numbers.</small>
</div>
 <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>