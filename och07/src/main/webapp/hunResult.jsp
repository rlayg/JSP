<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1부터 100까지의 합 스트릿틀잇 + Expresstion</h2>
	<%
		// Parameter sum Get
		String sum = request.getAttribute("sum").toString();
	%>
	
	<%=sum %><p>
</body>
</html>