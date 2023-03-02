<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%> 
    <!-- isErrorPage="true" 는 에러페이지 처리 담당자야 표시 -->
 
 <!-- 하지만 난 에러가 아니야 , 200은 HTTP 정상상태 코드
 	  에러전용페이지 이렇게 하는게 더 좋데 				-->
 <%
	//정상값 setting . 안해줘도 문제 없을 수 있어 그래도 해줘
 	response.setStatus(200);
 %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항</h1>
	작업중...<p>
</body>
</html>