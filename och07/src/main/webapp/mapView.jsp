<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${param.NAME }의 주소는? ${ADDRESS[param.NAME]}<p>
	<%-- ${ADDRESS."나무나무꼬치" }<p> 한글은 오류발생 --%>
	${ADDRESS["나무나무꼬치"] }<p>
	${ADDRESS.JeesongPark }<p>
</body>
</html>