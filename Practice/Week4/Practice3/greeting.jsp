<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>greeting message</title>
</head>
<body>
	<h3><br>greeting.jsp에서 출력한 메세지입니다.<br></h3>
	<%=request.getParameter("name") %>님 환영합니다.<br>
	오늘은 <%=request.getParameter("date") %>입니다.
</body>
</html>