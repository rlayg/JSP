<%@page import="och10.Dept"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>Expression부서정보</h2>
	<% 
		Dept dept = (Dept)request.getAttribute("dept");  /* Expression할 때 사용 */
	%>
		Ex 부서코드 : <%=dept.getDeptno() %><p>
		Ex 부서명 : <%=dept.getDname() %><p>
		Ex 근무지 : <%=dept.getLoc() %><p>
	
	<h2>EL부서정보</h2>
		EL 부서코드 : ${dept.getDeptno() }<p> <!-- 이렇게 써도 가능은 해 -->
		EL 부서명 : ${dept.dname }<p> <!-- 그래도 이렇게 해  get..() 하지마 내부에서 getter 가져옴 -->
		EL 근무지 : ${dept.loc }<p>
	
</body>
</html>