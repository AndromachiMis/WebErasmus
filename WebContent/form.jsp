<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.Statement" %> 
<%@ page import="java.sql.Connection" %>	
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Erasmus Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<% Connection con = null;
Class.forName("com.mysql.cj.jdbc.Driver");
String jdbcUrl = "jdbc:mysql://localhost:3306/hb_student_tracker?useSSL=false&serverTimezone=UTC";
//String user = "it21489";
String user = "root";
String pass = "root";
String query="select * from universities";
try
{
con = DriverManager.getConnection(jdbcUrl, user, pass);
} catch (Exception e) {
 e.printStackTrace();
 } %>
 
 <style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("erasmus-form.png");

  /* Full height */
  height: 30%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
 
 
</head>
<body>


<div class="bg"> </div>

<form action="StudentServlet" method="POST">

<div class = "page-header">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ErasmusApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="student.jsp">Home</a></li>
      <li><a href="form.jsp">Submit Form</a></li>
      <li><a href="unilist.jsp">Collaborating Universities</a></li>          
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</nav>

   
   <h1>
      Participation in Erasmus Form      
      
   </h1>
   <p>The following form must be completed successfully in order to be an Erasmus Student. After the submission, we will send you an email to announce you if you are accepted or not in any of the universities that you have chosen. </p>
      
</div>

<div class = "form-group">
<label for="id">Id:</label>
<input type="text" class="form-control" id="id" placeholder="Enter your id" required>
</div>
  <div class = "form-group">
<label for="username">Username:</label>
<input type="text" class="form-control" id="username" placeholder="Enter username" required>
</div>
  <div class = "form-group">
<label for="fullname">Fullname:</label>
<input type="text" class="form-control" id="fullname" placeholder="Enter student's fullname" required>
</div> 
<div class = "form-group">
<label for="fathername">Fathername:</label>
<input type="text" class="form-control" id="fathername" placeholder="Enter student's fathername" required>
</div>   
  <div class = "form-group">
<label for="mothername">Mothername:</label>
<input type="text" class="form-control" id="mothername" placeholder="Enter student's mothername" required>
</div>
  <div class = "form-group">
<label for="phone">Phone:</label>
<input type="number" class="form-control" id="phone" placeholder="Enter student's phone" required>
</div>
  <div class = "form-group">
<label for="year">Year:</label>
<input type="number" class="form-control" id="year" placeholder="Enter the year of studies" required>
<small id="yearHelp" class="form-text text-muted">Only numbers.</small>
</div>
  <div class = "form-group">
<label for="lessons">Lessons:</label>
<input type="number" class="form-control" id="lessons" placeholder="Enter the lessons which don't have an accessible grade" required>
<small id="lessonsHelp" class="form-text text-muted">Only numbers.</small>
</div>
  
   Choose Universities from the list below (max 3 universities):<br>
   <% Statement stmt=con.createStatement();
   	ResultSet rs=stmt.executeQuery(query);
   	while(rs.next()) {  %>
   <input type="checkbox" name="universities" value="<%=rs.getString("name") %>" /><%=rs.getString("name") %>
   <% } %>
   <br><br>   
   <label for = "name">Do you have the appropriate language certificate?
  </label>
      <div class = "radio">
         <label>
          <input type = "radio" name = "cert" id = "cert" value = "Yes" checked> Yes 
         </label>
          <div class = "radio">
         <label>
            <input type = "radio" name = "cert" id = "cert" value = "No">
               No
         </label>
      </div>
      </div>  
  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>
</body>
</html>