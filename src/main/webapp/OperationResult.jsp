<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="str" value="Spring is a java framework"></c:set>
<c:out value="str: ${str}"/> <br>
<c:out value="Length of str: ${fn:length(str)}"/><br>
<c:forEach var="s" items="${fn:split(str,' ')}">
	<c:out value="${s}"/> <br>
</c:forEach>

<c:if test="${ fn:contains(str,'java') }">
	Yes there is 'java'
</c:if>


<%-- <sql:setDataSource var="db" password="kamil29057202" user="root" url="jdbc:mysql://localhost:3306/resumeapp" driver="com.mysql.jdbc.Driver"/>
<sql:query var="rs" dataSource="${db}">SELECT * FROM students</sql:query>

<c:forEach var="st" items="${rs.rows}">
	<c:out value="${st.id}"/> . <c:out value="${st.userName}"/> : <c:out value="${st.userPoint}"/> <br>
</c:forEach> --%>

<%-- <c:forEach var="s" items="${students}">
	${s} <br> 
</c:forEach>


<h3>${students}</h3> --%>


</body>
</html>