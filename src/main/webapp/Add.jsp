<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding operations</title>
</head>
<body style="background-color:antiquewhite;">
<%! 
String name  = "KAMIL" ; 
int num = 5;
public void newMethod(){
	System.out.println("Hello");
};	

public int square (int a){return a*a;};
%>

	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int output = num1 + num2;
	newMethod();
	%>

<h2>Output is <% out.print(output); %></h2>

	<h3>Name is : <%=name %></h3>
	<h3>Square of <%=num %> is = <%=square(num) %></h3>
</body>
</html>