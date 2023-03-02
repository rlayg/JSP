<%@page import="java.util.HashMap"%>
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
			//KEY    Value
	HashMap<String, String> map = new HashMap<>();
	map.put("김나무라르손", "목동");
	map.put("나무나무꼬치", "신촌");
	map.put("JeesongPark", "홍대");
	map.put("MinJJaiKim", "시드니");
	
	request.setAttribute("ADDRESS", map);
	RequestDispatcher dispatcher = request.getRequestDispatcher("mapView.jsp?NAME=MinJJaiKim"); //? 는 form문의 파라미터처럼 생각하래 NAME=MinJJaiKim 는 폼문에서 온거랑 같은거라 생각
	dispatcher.forward(request, response);
%>
</body>
</html>