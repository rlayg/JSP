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
	request.setCharacterEncoding("utf-8");
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	/* 
	println("덧셈 : %d + %d = %d<p>", num1, num2, (num1 + num2));;
	minus = out.println("뺄셈 : %d - %d = %d<p>", num1, num2, (num1 - num2));;
	multiply = out.println("곱셈 : %d * %d = %d<p>", num1, num2, (num1 * num2));;
	divide = out.println("나눗셈 : %d / %d = %.2f<p>", num1, num2, ((double)num1 / num2));;
	 */
	%>
	<!--  Expression(표현식) -->
	<%-- 덧셈 = <%=plus%> --%>
	
</body>
</html>