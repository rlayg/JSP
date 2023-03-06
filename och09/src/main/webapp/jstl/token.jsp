<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="animals"	value="토끼, 강아지*고양이, 여우"></c:set>
	<h2>사자의 생일</h2>   <!-- delims는 구분자라는 뜻 딜리미터의 약자 -->
							<!-- 토끼, 강아지  /  고양이, 여우 -->
	<c:forTokens var="animal" items="${animals }" delims="*">
		${animal }<br>
	</c:forTokens>
</body>
</html>