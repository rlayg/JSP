<%@page import="java.sql.Types"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- oracle에 프로시저 Emp_Info3 scott_2023-03-07에 있어 만들어져있어야함 -->
<%
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	Connection conn = ds.getConnection();
	
	int empno = Integer.parseInt(request.getParameter("empno"));
	System.out.println("empno -> " + empno);
	
//	Procidure Call
	String sql = "{call Emp_Info3(?,?)}";
	CallableStatement cs = conn.prepareCall(sql);
//	급여
	cs.registerOutParameter(2, Types.DOUBLE);
//	사번
	cs.setInt(1, empno);
	cs.execute();
	out.println("급여 : " + cs.getDouble(2));
	cs.close();
	conn.close();
%>
</body>
</html>