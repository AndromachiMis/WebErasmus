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
   
   <h1>
      Delete Student     
      
   </h1>
   <p>In order to delete a student from our system insert the id.</p>
  </div>
   
   <div class = "form-group">
<label for="id">Student Id:</label>
<input type="text" class="form-control" id="id" placeholder="Student's Id">
<small id="statusHelp" class="form-text text-muted">Insert ONLY the id of the Student.</small>
</div>
<button type="submit" class="btn btn-primary">Submit</button>  

</form>
</body>
</html>