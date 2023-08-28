<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="db" password="kamil29057202" user="root" url="jdbc:mysql://localhost:3306/resumeapp" driver="com.mysql.jdbc.Driver"/>
<sql:query var="rs" dataSource="${db}">SELECT * FROM students</sql:query>

<c:forEach var="st" items="${rs.rows}">
	<c:out value="${st.id}"/> . <c:out value="${st.userName}"/> : <c:out value="${st.userPoint}"/> <br>
</c:forEach>

<%-- <c:forEach var="s" items="${students}">
	${s} <br> 
</c:forEach>


<h3>${students}</h3> --%>


</body>
</html>