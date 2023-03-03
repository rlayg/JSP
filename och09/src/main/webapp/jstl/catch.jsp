<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- prefix="c" 가 c인 이유는 uri의 뒤에가 core라서 c야 -->
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%-- <% @붙이는게 지시자야 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  num에서 호출  try-catch -->
	<!-- catch로 에러잡고 if에서 e.getmessage역할 해 -->
	<c:catch var="e1">
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	나눗셈 결과 : <%=num1/num2 %>
	</c:catch>
	<c:if test="${e1 != null }">
		에러메세지 : ${e1.message }
	</c:if>
</body>
</html>