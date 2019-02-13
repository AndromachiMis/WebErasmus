<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete university</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form action="DeleteUniversityServlet" method="POST">

<div class = "page-header">
   
   <h1>
      Delete University     
      
   </h1>
   <p>In order to delete a University from our system insert the id.</p>
   </div>
   
   <div class = "form-group">
<label for="id">University Id:</label>
<input type="text" class="form-control" id="id" placeholder="University's Id">
<small id="statusHelp" class="form-text text-muted">Insert ONLY the id of the University.</small>
</div>
<button type="submit" class="btn btn-primary">Submit</button>  
  </form>
  
</body>
</html>