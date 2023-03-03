<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>연산결과 setting(web.xml)통한 error처리</h2>
<%
//맨위 지시자에 errorPage="error2.jsp" 이거 안걸거야
//WEB-INF 밑에 web.xml 을 만저
// 만약 회사갔는데 jsp 이런곳에 에러가 표시가 없어 그러면 xml가서 확인해봐
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));

out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<p>");



%>
</body>
</html>