<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Student's menu</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">

.student-menu {
  width: 300px; /* Set a width if you like */  
}

.student-menu a {
  background-color: #eee; /* Grey background color */
  color: black; /* Black text color */
  display: block; /* Make the links appear below each other */
  padding: 12px; /* Add some padding */
  text-decoration: none; /* Remove underline from links */
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  
}

.student-menu a:hover {
	 background-color: #ccc;  /* Dark grey background on mouse-over */
}

.student-menu a.active {
   background-color: #4285F4;      /*Add a blue color to the "active/current" link */
   color: white;    
}

</style>
</head>
<body>
<h2>Welcome to ErasmusApp!</h2>
<h2>Select a Service from the menu below:</h2>
</br>

<div class="student-menu">
  <a href="student.jsp" class="active">Home</a>
  <a href="form.jsp">Submit form</a>
  <a href="unilist.jsp">Details for Universities</a>
  <a href="logout.jsp">Logout</a>
</div>

	</body>
</html>