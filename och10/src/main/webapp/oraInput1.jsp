<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	// oraInput 에서 post방식으로 하려면 utf-8 넣어줘야함 안그러면 한글 깨짐
	//	request.setCharacterEncoding("utf-8"); 
	String deptno = request.getParameter("deptno");
	String dname = request.getParameter("dname");
	String loc= request.getParameter("loc");

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = String.format("Insert into dept values (%s, '%s', '%s')", deptno, dname, loc);
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "scott", "tiger");
	Statement stmt = conn.createStatement();
	
	int result = stmt.executeUpdate(sql);
	if (result > 0) {
		out.println("입력 성공");
	} else {
		out.println("입력 실패");
	}
	
	stmt.close();
	conn.close();
%>
</body>
</html>