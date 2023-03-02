<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>연산결과 오류시 Java Script 이용 처리</h2>
<%
	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
		out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<p>");
	} catch (NumberFormatException e) {
%>
	<script type="text/javascript">
		alert("그게 숫자냐");
		history.go(-1);  //전 Page 이동 , 나를 부른놈(호출한놈)으로 가라, -2면 할아버지 페이지로 이동 날 부른놈의부른놈으로 가라
	</script>
<%
	} catch (ArithmeticException e) {
%>
	<script type="text/javascript">
		alert("0으로 못나눠");
		history.back(); //전 페이지로 이동 history.go(-1) 과 같아
	</script>
<%
	} catch (Exception e) {
%>
	<script type="text/javascript">
		alert("하여튼 에러야");
		location.href="num2.html"; //지정한 페이지로 가라, 여기에서 이거랑 history.go(-1); history.back(); 는 같아
	</script>
<%
	}
%>
</body>
</html>