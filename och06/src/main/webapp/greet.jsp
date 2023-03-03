<%@page import="java.io.FileWriter"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- init 과 destroy 는 <%!로 디클라레이션 사용, Get / POST 는 <% 스트립트릿 사용 --%>
<%!
/* %! 선언할 때 사용 약속이야 / 멤버변수 , init()*/
	//선언 -- member변수
	private PrintWriter pw;
	String date;
	//선언 -- init()
	// 약속 init을 JSP에서 쓸때는 jspInit() 이라고 써라
	public void jspInit() {
		GregorianCalendar gc = new GregorianCalendar();
		date = String.format("%TF %TT", gc, gc);
		System.out.println("date -> " + date);
	//	파일명에 : 콜론 들어가면 안된데 그래서 replace 써서 없애줘라
		String fileName = "c:/log/" + date.replaceAll(":", "") + ".txt";
		try {
			pw = new PrintWriter(new FileWriter(fileName, true));
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("jspInit 에러");
		}
	}

%>
<%
//  Get / POST
// 얘내는 스트립틀릿에 그냥 적으래
	String name = request.getParameter("name");
	String msg = name + "님 방가워";
	// 화면출력
	out.println(msg + "<p> 현재시간 : " + date);
	// file 출력
	pw.println(msg + "\r\n 현재시간 : " + date + "\r\n");

%>
<%!
// destroy
	public void jspDestroy() {
		System.out.println("jspDestroy start...");
		pw.flush();		//buffer 강제출력
		if(pw != null) {
			pw.close();
		}
	}
%>
</body>
</html>