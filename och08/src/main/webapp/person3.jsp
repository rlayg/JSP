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
	String name = request.getParameter("name") + "님";
	String gender = request.getParameter("gender");
	int age = Integer.parseInt(request.getParameter("age"));
%>
	
	<!-- Person Bean 선언 person -->
	<jsp:useBean id="person" class="och08.Person" scope="request"/>
	
	<!-- Bean 값 저장 -->
	<jsp:setProperty property="name" name="person" value="<%=name %>"/>
	<jsp:setProperty property="gender" name="person" value="<%=gender %>"/>
	<jsp:setProperty property="age" name="person" value="<%=age %>"/>
	
	<!-- Bean Page 이동 -->
	<jsp:forward page="personResult.jsp"></jsp:forward>
	
</body>
</html>