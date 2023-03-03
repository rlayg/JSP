<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Person Bean 선언 person -->
	<!-- 여기서는 페이지 이동시킬거라 page하면 안돼 request 로 해야함 -->
	<jsp:useBean id="person" class="och08.Person" scope="request"/>
	
	<!-- Bean 값 저장 -->
	<jsp:setProperty property="age" name="person"/>
	<jsp:setProperty property="gender" name="person"/>
	<jsp:setProperty property="name" name="person"/>
	
	<!-- Bean 값 가져오기 -->
	
	
	<!-- Bean Page 이동 -->
	<jsp:forward page="personResult.jsp"></jsp:forward>
</body>
</html>