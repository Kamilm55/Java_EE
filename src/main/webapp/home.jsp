<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
response.setHeader("Cache-Control","no-cache,must-revalidate,no-store");
	if(session.getAttribute("userName")==null)
		response.sendRedirect("./login.jsp");
%>

<h2>Home page</h2>
<h3>Welcome ${userName}</h3>

<a href="./videos.jsp">Link to videos</a>
<form action="./logout" ><input type="submit" value="logout" /></form>
<!-- <form action="./operations" method="post" > 
	Enter 1st int number: <input type="text" name="num1" />	<br/> <br/>
	Enter name: <input type="text" name="name" />	<br/><br/>
	<input type="submit" />	
</form> -->


</body>
</html>