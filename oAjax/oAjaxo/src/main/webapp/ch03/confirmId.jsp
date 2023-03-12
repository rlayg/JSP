<%@page import="oAjax.MemberDao"%>
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
	//Service?역할 하는애
	String id = request.getParameter("id");
	//DAO 호출 -> Singleton D/P 디자인패턴
	MemberDao memberDao = MemberDao.getInstance(); // 이게 싱글톤이래
	
	/*
	MemberDao memberDao = MemberDao.getInstance(); 는 
	싱글톤 디자인 패턴을 이용하여 MemberDao 클래스의 인스턴스를 생성하는 부분입니다.

	싱글톤 패턴이란, 프로그램에서 특정 클래스의 인스턴스가 오직 하나만 존재하도록 보장하는 디자인 패턴입니다. 
	이렇게 하면 메모리 사용을 줄이고, 객체 간의 데이터 공유가 용이해집니다.
	
	위 코드에서 getInstance() 메소드를 호출하여 MemberDao 클래스의 인스턴스를 생성하는데, 
	이 메소드는 MemberDao 클래스 내부에서 자신의 인스턴스를 생성하고, 
	전에 생성된 인스턴스가 있으면 그 인스턴스를 반환하는 방식으로 동작합니다. 
	따라서, MemberDao 클래스의 인스턴스는 프로그램 전체에서 오직 하나만 생성되고, 
	이를 사용하여 데이터베이스와 연동하는 DAO 역할을 수행합니다.
	*/
	
	//member1 Read 해서
	// id 존재 --> return1
	// id 존재X -> return0
	
	
	
	int result = memberDao.confirm(id);
	if(result == 0){
		out.println("사용할 수 있는 ID입니다");
	} else {
		out.println("이미 있는 아이디 입니다");
	}
%>
</body>
</html>