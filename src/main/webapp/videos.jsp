<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,must-revalidate,no-store");
	if(session.getAttribute("userName")==null)
		response.sendRedirect("./login.jsp");
%>
	<h1>Videos!</h1>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/OuBUUkQfBYM?si=Py3Pea-CJiJZfC27" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<form action="./logout" ><input type="submit" value="logout" /></form>
</body>
</html>