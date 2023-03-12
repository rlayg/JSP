<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	double[] temp = {9.8, 30.2, 24.7, 23.7, 23.1};
	for(int i = 0; i < temp.length; i++){
		//out.print(temp[i]);
		out.println(temp[i]);
		
		if(i != (temp.length -1)){ //length의 마지막이 아니면 , 붙여
			out.print(",");
		}
	}
%>