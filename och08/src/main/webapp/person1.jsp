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
	<!-- 1. Person person = new Person(); 자바코딩인 이거랑 똑같은 개념인거야 -->
	<jsp:useBean id="person" class="och08.Person" scope="page"/>
	
	<!-- scope="page" 하면 같은 페이지 내에서만 set get 볼 수 있어 -->
	
	<!-- Bean 값 저장 -->
	<jsp:setProperty property="*" name="person"/>
	<!-- 
		2. 아래는 person.setName("홍길동"); 자바코딩인 이거랑 똑같은 개념인거야
		그리고 위의 *처럼 안하고 각각하려면
		밑에처럼 property="name" 이렇게 각각 다 넣어야해
	 -->
	<%-- <jsp:setProperty property="name" name="person"/> --%>
	
	<!-- Bean 값 가져오기 -->
	<h2>인적사항</h2>
	이름: <jsp:getProperty property="name"	name="person"/><p>
	성별: <jsp:getProperty property="gender"	name="person"/><p>
	나이: <jsp:getProperty property="age"		name="person"/><p>
	<!-- 3. person.getName(); 자바코딩인 이거랑 똑같은 개념인거야 -->
	
		
</body>
</html>