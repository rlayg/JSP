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
	// EL표기법 사용
	int sum = 0;
	for(int i = 1; i <= 100; i++) {
		sum += i;
	}
	
	//누적된 값 sum을 "sum"에 저장
	request.setAttribute("sum", sum);
	RequestDispatcher rd = request.getRequestDispatcher("hunResult2EL.jsp");
	rd.forward(request, response);
%>
</body>
</html>