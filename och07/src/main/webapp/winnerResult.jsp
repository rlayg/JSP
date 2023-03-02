<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1. scriptlet 우승자</h2>
	<%
		//string이 아니라 .toString 안하고 객체이기에 캐스팅 해 앞에 ()열고 안에 타입 넣는게 캐스팅
		String[] win = (String[])request.getAttribute("winner"); 
		for(int i = 0; i<win.length; i++){
			out.println((i+1) + "등 : " + win[i] + "<p>");
		}
	%>
	
	 
	<h2>2. EL 우승자</h2>
	1등 : ${winner[0]}<p>
	2등 : ${winner[1]}<p>
	3등 : ${winner[2]}<p>
</body>
</html>