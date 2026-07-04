<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>forward action</title>
</head>
<body>
	<jsp:forward page="greeting.jsp">
		<jsp:param name="name" value="Dongduk University" />
		<jsp:param name="date" value="2011/04/05" />
 	</jsp:forward>
</body>
</html>