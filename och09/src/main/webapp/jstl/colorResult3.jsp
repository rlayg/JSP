<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<!-- colorResult3 변수 선언 -->
	<c:set var="color"	value="red, orange, yellow, green, blue, navy, violet"/>
	<c:set var="num"	value="1-2-3-4-5-6-7"/>
<body>
	<%-- 이거랑 비슷하게 나오게 
	<c:forEach var="cnt" begin="1" end="7">
		<c:forEach var="col" items="${color }">
			<font color="${col }" size="${cnt }">야호</font>
		</c:forEach>
		<br>
	</c:forEach>
	 --%>
	 
	 
</body>
</html>