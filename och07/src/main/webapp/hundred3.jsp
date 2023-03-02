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
	int sum = 0;
	for(int i = 1; i <= 100; i++) {
		sum += i;
	}
	
	//누적된 값 sum을 "sum"에 저장
	//request.setAttribute("sum", sum);
	
	//pageContext는 내장객체 Scope:Page
	pageContext.setAttribute("sum", sum);
	
	RequestDispatcher rd = request.getRequestDispatcher("hunResultEL3.jsp");
	rd.forward(request, response);
	// 밑에 같은 Page : ${sum} 하면 값만 나오고 위 2개주석만 풀면 '1~100까지합' 글자만 나옴
	// pageContext를 주석처리하고 request 주석 풀면 위 2개 주석 풀어도 값 제대로 다옴
	
%>
같은 Page : ${sum}
</body>
</html>