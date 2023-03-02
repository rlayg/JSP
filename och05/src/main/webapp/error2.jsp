<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <%
    //  위 지시자에 isErrorPage="true" 설정해서 에러페이지 라고 지정 true해줘야함
    //  isErrorPage="true 난 에러처리반이야 라는 뜻
    response.setStatus(200);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>공지</h2>
	더 나은 서비스를 위해서 준비중입니다.<p>
	메시지 : <%= exception.getMessage() %><p>
	클래스 : <%= exception.getClass() %>
	<%-- 
		<%= 이렇게 =하면 익스프레션 
		 위에 지시자 설정 안하면 exception 안먹어
	--%>
</body>
</html>