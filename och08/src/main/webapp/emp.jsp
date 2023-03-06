<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>HW1-2</h2>
  <!-- emp Bean 선언 -->
  <jsp:useBean id="emp" class="och08.emp" scope="request"/>
  
  <!-- emp Bean 값 저장 -->
  <jsp:setProperty property="*" name="emp"/>
  
  <%-- 
  이렇게 하나하나 다 해줘도 된다
  <jsp:setProperty property="empno" name="emp"/>
  <jsp:setProperty property="ename" name="emp"/>
  <jsp:setProperty property="job" name="emp"/>
  <jsp:setProperty property="sal" name="emp"/>
   --%>
  <!-- emp Bean Page 이동  empResult.jsp -->
  <jsp:forward page="empResult.jsp"></jsp:forward>
  
</body>
</html>