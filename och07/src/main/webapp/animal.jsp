<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Form은 param받음</h1>
		<!-- Form을 통해 입력된 데이터를 가져올 때 param. 사용, EL표기법으로 $ 사용-->
		첫번째 동물 : ${param.an1}<br>
		두번째 동물 : ${param.an2}<br>
		같은  동물 : ${param.an1==param.an2 }<br>
		
</body>
</html>