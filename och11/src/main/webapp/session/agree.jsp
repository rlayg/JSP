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
	String id		= request.getParameter("id");
	String password	= request.getParameter("password");
	String name		= request.getParameter("name");
	session.setAttribute("id", id);  //session 클라이언트와 서버의 연결을 유지하는데 사용 세션은 서버에 저장된다
	session.setAttribute("password", password);
	session.setAttribute("name", name);
//	Attribute로 쓸수도 있고 session으로 쓸수 도 있어 근데 공유하고 프로젝트하는건 세션이 편하데
%>
	<h2>약관 동의</h2>
	------------------------------------------------------------------------- <BR>
	1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.     <BR>
	2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다. <BR>
	------------------------------------------------------------------------- <BR>
	<form action="subscribe.jsp">
		동의<input type="radio" name="agree" value="y"><p>
		거부<input type="radio" name="agree" value="n"><p>
		<input type="submit" value="확인">
	</form>
</body>
</html>