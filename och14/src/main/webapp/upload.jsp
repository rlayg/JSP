<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	request.setCharacterEncoding("utf-8");
	//
	int maxSize = 5 * 1024* 1024; //이래야 5메가구나 앎 계산하지 마 이렇게 표현함
	String fileSave = "/fileSave";
	//Meta Data
	//	getServletContext -- tomcat에 배포할건데 RealPath로 잡을거야
	String realPath = getServletContext().getRealPath(fileSave);
	System.out.println("realPath -> " + realPath);
	MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
	
	Enumeration en = multi.getFileNames();
	while (en.hasMoreElements()){ //향상형 for문처럼 생각해, 파일 하나 올려도 while문으로 해 나중에 2개 올리게 되도 쉽게 할 수 있어
		//input 태그의 속성이 file인 태그의 name 속성값: 파라미터이름
		String parameterName = (String) en.nextElement();
		//서버에 저장된 파일 이름
		String serverSaveFilename = multi.getFilesystemName(parameterName);
		//전송전 원래의 파일 이름
		String original = multi.getOriginalFileName(parameterName);
		//전송된 파일의 내용 타입
		String type = multi.getContentType(parameterName);
		//전송된 파일속성이 file인 태그의 name 속성값을 이용해 파일객체 생성
		File file = multi.getFile(parameterName);
		out.println("real Path : " + realPath + "<br>");
		out.println("파라미터 이름 : " + parameterName + "<br>");
		out.println("실제 파일 이름 : " + original+ "<br>");
		out.println("저장된 파일 이름 : " + serverSaveFilename + "<br>");
		out.println("파일 타입 : " + type + "<br>");
		if(file != null){
			out.println("크기 : " + file.length() + "<br>");
		}
	}
	String name = multi.getParameter("name");   //이미지가 같이 올라갈때는 multi로 불러라
	String title = multi.getParameter("title");
	
	//DTO setting
	//DML ==> DAO

%>
</body>
</html>
