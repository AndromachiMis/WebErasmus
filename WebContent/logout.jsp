<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout</title>
</head>
<body style="background-color:#e0e0e0">
       <center>
       <h2>Are you sure you want to disconnect?</h2></br>
       <form action="LogoutServlet" method="post">
       		<button type="submit">Logout</button> </br>
       		</br>
            <a href="javascript:history.back()">If not, return back</a>
                
        </form></center>
</body>
</html>