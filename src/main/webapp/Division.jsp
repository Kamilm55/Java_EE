<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="Error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! 
public int divide(int num1,int num2) throws ArithmeticException {
		return num1 / num2;
}
%>

<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));

int result = 0;
try{
result = divide(num1, num2);
}
catch(Exception ex){
throw new Exception(ex);
}
%>

<h1>Output is: <%=(result == 0 ? "Not dividing zero" : result)%> </h1>

</body>
</html>