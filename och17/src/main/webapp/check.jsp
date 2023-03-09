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
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	//가정(DB)
	if(id.equals("kk") && pass.equals("1234")){
		session.setAttribute("id", id);
	} else {
//		session.invalidate 객체를 무효화하여 세션을 종료하는 메소드
		session.invalidate();
	}
	
%>
<a href = "sub2/winner.jsp">당첨자 보기</a>
</body>
</html>