<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<%@ page import="gr.hua.weberasmus.WebErasmusGeneric" %>
<%@ page import="java.util.List" %>
<%@ page import="org.json.JSONObject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Universities List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<% 	
		WebErasmusGeneric weg = new WebErasmusGeneric();
		List<JSONObject> list = weg.getUniversities(); %>
	<div class="container">
		<h2>Universities List</h2>
		<p>In the list below you can find all the Collaborating
			Universities:</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Location</th>
					<th>Number of Acceptants</th>
				</tr>
			</thead>
			<tbody>
			<% for (int i=0; i<list.size();i++) { %>
				<tr>
					<td><%=list.get(i).get("id")%></td>
					<td><%=list.get(i).get("name")%></td>
					<td><%=list.get(i).get("location")%></td>
					<td><%=list.get(i).get("num_acceptants")%></td>
				</tr>
			<% } %>
			</tbody>
		</table>
	</div>
</body>
</html>
