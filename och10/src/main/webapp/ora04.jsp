<%@page import="och10.Dept"%>
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
<!--  
	DTO : Data Transfer Object = 데이터를 전달하는 객체
		Java Resource 에 Dept.java 만듦 이게 DTO 만든거
	DAO : Data Access   Object 
-->
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
	//DTO 선언
	Dept dept = new Dept(); // och10 임포트하는거로
	
	if(rs.next()) {
		String dname = rs.getString("dname"); //rs.getString(2);
		String loc = rs.getString(3); //숫자는 조회되는 컬럼 순서
		// DTO 저장
		dept.setDeptno(Integer.parseInt(deptno));
		dept.setDname(dname);
		dept.setLoc(loc);
		// Dept(DTO) 로 저장
		request.setAttribute("dept", dept);
	} else {
		out.println("그게 무슨 부서야 없는데");
	}
	rs.close();
	stmt.close();
	conn.close();
	// 여기서 보여주는게 아니라 Page 이동해서 보여주는거	
	RequestDispatcher rd = request.getRequestDispatcher("ora04Result.jsp");
	rd.forward(request, response);
%>
</body>
</html>