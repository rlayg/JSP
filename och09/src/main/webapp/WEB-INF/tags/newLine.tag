<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty" %> <!-- html에 body를 선언하지 않겟다 -->
<%@ attribute name="color" required="true"%> <!-- 기본 color 필수다 String 타입이다 기본 -->
<%@ attribute name="size" required="true" type="java.lang.Integer" %> <!-- 숫자필요하면 Integer 해주기 -->
<font color="${color }">
	<%
		for(int i = 0; i < size; i++){
			out.println("-");
		}
	
	%>
	
	<!-- 이를 이용 cstl -->
</font>
