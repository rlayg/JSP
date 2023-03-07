<%@page import="java.util.ArrayList"%>
<%@page import="och10.Division"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
	String dno = request.getParameter("dno");
	
	String driver = "com.mysql.cj.jdbc.Driver";
	String url	  = "jdbc:mysql://localhost:3306/scottdb?serverTimezone=UTC";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "root", "mysql80");
	String sql = "select * from division where dno =" + dno;
	
	
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		
		Division division = new Division();
		division.setDno(rs.getInt(1));
		division.setDname(rs.getString(2));
		division.setPhone(rs.getString(3));
		division.setPosition(rs.getString(4));
		request.setAttribute("division", division);
		
		rs.close();
		stmt.close();
		conn.close();
		
		RequestDispatcher rd = request.getRequestDispatcher("my04Result.jsp");
		rd.forward(request, response);
	} else {
		out.println("그게 무슨 부서야 없는데");
	}
	stmt.close();
	conn.close();
%>
</body>
</html>