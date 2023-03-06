<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- prefix="u" user가 만든거라 u로 햇데 -->
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>

  <!-- custom한 standard tag line  -->
 <!--  
  WEB-INF 우클릭 - tags 폴더 만들기 - 우클릭 -new - others  - JSP Tag 없으면 직접쳐
  cstl에서 사용
  권장하는 바가 아니기에 조금만 해
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>좋아하는 책</h2>
	<u:newLine color="red" size="20"/><br>	
	홍길동전<p>
	이순신전<p>
	김유신전<p>
	<u:newLine color="blue" size="30"/>
	
</body>
</html>