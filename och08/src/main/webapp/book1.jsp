<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Bean  Java Bean은 특정 형태의 클래스  -->
    <!-- 1. 필드는 private로 구성  -->
    <!-- 2. getter와 setter를 통해서만 접근  -->
    <!-- 3. 전달 인자가 없는( no-argument)  생성자로 구성  -->

	<!-- Bean 선언 -->
	<jsp:useBean id="pt" class="och08.Book" scope="request"/>
	
	<!-- Bean 값 저장 setAttribute랑 비슷한 느낌 애-->
	<jsp:setProperty property="*" name="pt"/>
	<%-- 
	<jsp:setProperty param="name" property="name" name="pt"/>
	<jsp:setProperty param="code" property="code" name="pt"/>
	<jsp:setProperty param="price" property="name" price="pt"/>
	 --%>
	
	<!-- Bean 값 가져오기 //위 Bean에서 선언한 id를 name에 넣어야해-->
	코드: <jsp:getProperty property="code" name="pt"/><p> 
	이름: <jsp:getProperty property="name" name="pt"/><p>
	가격: <jsp:getProperty property="price" name="pt"/><p>
	
	
	<!-- Bean Page 이동, 페이지이동 -->
	<jsp:forward page="productInfo.jsp"/>
	
	
	
</body>
</html>