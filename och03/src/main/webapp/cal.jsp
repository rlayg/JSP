<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사칙연산</h1>
	<%
	// 스크립틀릿(scriptlet)   --> JAVA Coding
	// num1 num2 Get -> 사칙연산
	//이 리퀘스트는 없어도 될듯
	request.setCharacterEncoding("utf-8");
	
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int add = num1 + num2;
	int min = num1 - num2;
	int mul = num1 * num2;
	int div = num1 / num2;
	%>
	<!--  Expression(표현식) -->
	 덧셈 : = <%=add%><p>
	 뺄셈 : = <%=min%><p>
	 곱셈 : = <%=mul%><p>
	 나눗셈 : = <%=div%><p>
	
</body>
</html>