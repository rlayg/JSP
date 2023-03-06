<%@page import="java.sql.ResultSet"%>
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
	String deptno = request.getParameter("deptno");	

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	
	String sql = "select * from dept where deptno=" + deptno;
	Class.forName(driver);
	System.out.println("SQL -> " + sql); //이렇게 해서 오류잡기
	Connection conn = DriverManager.getConnection(url, "scott", "tiger");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()) {
		String dname = rs.getString("dname"); //rs.getString(2);
		String loc = rs.getString(3); //숫자는 조회되는 컬럼 순서
		// 변수 값 저장 --> ora03Result.jsp 에서 EL표기법으로 보여줘라
		request.setAttribute("deptno", deptno);
		request.setAttribute("dname", dname);
		request.setAttribute("loc", loc);
	} else {
		out.println("그게 무슨 부서야 없는데");
	}
	rs.close();
	stmt.close();
	conn.close();
	// 여기서 보여주는게 아니라 Page 이동해서 보여주는거	
	RequestDispatcher rd = request.getRequestDispatcher("ora03Result.jsp");
	rd.forward(request, response);
%>
</body>
</html>