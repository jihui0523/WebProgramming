<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		String name=request.getParameter("username");
		out.println(name+"님 환영합니다.<br><br>");
		
		String sessin_id=session.getId();
		out.println("세션ID: "+sessin_id+"<br>");
		out.println("세션 지속시간: "+session.getMaxInactiveInterval()+"<br>");
	%>
	<p><a href="session_03.jsp" target="_blank">session_03.jsp로 가기</a></p>
</body>
</html>