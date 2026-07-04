<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<title> include action</title>
<style>
	body {
            text-align: center;  
        }
</style>
<body>
	<h1>include 액션 연습</h1>
	<hr>	
	<jsp:include page="greeting.jsp">
    	<jsp:param name="name" value="Dongduk University" />
    	<jsp:param name="date" value="2011/04/05" />
	</jsp:include>
</body>
</html>