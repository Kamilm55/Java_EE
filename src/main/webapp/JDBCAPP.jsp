<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Data from MySql</h1>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/resumeapp","root",);
	String query = "SELECT * from students ;";
	Statement statement = connection.createStatement();
	
	ResultSet resultSet = statement.executeQuery(query);
	
boolean isContinue = true;
	
	while((isContinue = resultSet.next()) != false){
	int id = resultSet.getInt(1);
	String name = resultSet.getString(2);
	int point = resultSet.getInt(3);
	out.println(id);
	out.println(name);
	out.println(point);
	out.print("<br/>");
	}
	%>
	

	
</body>
</html>