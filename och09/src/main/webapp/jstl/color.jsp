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
		String[] color = { "red", "orange", "yellow", "green", "blue", "navy", "violet"};
		request.setAttribute("color", color); //이건 기본이 request야 그래서 scope를 request로 지정 안해줘도 돼 
		/* pageContext.setAttribute("color", color); */
	%>
	<%-- <jsp:forward page="colorResult.jsp"></jsp:forward> --%>
	<jsp:forward page="colorResult2.jsp"></jsp:forward>
</body>
</html>