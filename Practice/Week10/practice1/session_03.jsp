<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		long last_time=session.getLastAccessedTime();
		long start_time=session.getCreationTime();
		out.println("세션이 생성된 후 "+(last_time-start_time)/1000+"초가 지났습니다.");	
	%>
</body>
</html>