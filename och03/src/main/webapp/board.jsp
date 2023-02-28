<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board Servlet 변환 PGM</title>
</head>
<body>
	<h1>board Servlet 변환 PGM</h1>
	<%
	//	스크립트릿(Scriptlet) --> JAVA Coding 가능
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		Date date = new Date();
		//-------        1. 파일저장       ------------
		long fileName = date.getTime();
		// getRealPath --> Tomcat Metadata로  File 저장
		// 나중에 getRealPath 를 써서 서버(미들웨서,톰캣같은곳)에 배포를 해라
		String real = application.getRealPath("/WEB-INF/out/" + fileName + ".txt");
		System.out.println("real -> " + real);
		// File 저장할수 있는 객체 / File에 저장하기 위한 객체
		FileWriter fw = new FileWriter(real);
		// File 내용
		String msg = "제목 : " + title + "\r\n";
		msg += "작성자 : " + writer + "\r\n";
		msg += "내용 : " + content + "\r\n";
		fw.write(msg);
		fw.close();
		//----------------------------------
		//-----------2-1. 화면출력 방법1-----------------
		//----------------------------------
		//PrintWriter out = response.getWriter();
		//이거 내장객체로 있어서 안써도 출력 된다
		out.println("제목1 : " + title + "<p>" );
		out.println("작성자1 : " + writer+ "<p>" );
		out.println("작성일1 : " + date + "<p>" );
		out.println("내용1 : " + content + "<p>" );
	%>
		<!--  2-2. 화면출력 방법2     -->
	제목2 : <%=title %><p>	
	작성자2 : <%=writer %><p>
	작성일2 : <%=date %><p>
	내용2 : <%=content %><p>
		
</body>
</html>