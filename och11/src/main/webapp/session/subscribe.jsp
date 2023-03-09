<%@page import="och11.MemberDto"%>
<%@page import="och11.MemberDao"%>
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
//Business --> Service
//여기 스크립트릿도 Model의 서비스로직이야 이거도 나중에 자바로, 서버로 빼서 dao랑 주고받게 한데


	String	chk		=	"";
	String	agree	=	request.getParameter("agree");
	if(agree.equals("y")){
		String id = (String)session.getAttribute("id");
		String password = (String)session.getAttribute("password");
		String name = (String)session.getAttribute("name");
		MemberDao md = new MemberDao();
		MemberDto member = new MemberDto();
		member.setId(id);
		member.setName(name);
		member.setPassword(password);
		int result = md.insert(member); //insert메소드를 dao에서 만드는게 과제
		if(result > 0 ) {
			chk = "success";
		} else {
			chk = "fail";
		}	
	} else if (agree.equals("n")) {
		chk = "fail";
	}
	
	out.print("invalidate() 적용전에도 " + session.getId() + "<br>");
	session.invalidate();
	out.print("invalidate() 적용후에도 " + session.getId() + "<br>");
	
	response.sendRedirect("result.jsp?chk=" + chk);
%>   

</body>
</html>
