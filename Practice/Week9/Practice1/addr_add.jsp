<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
<style>
	body{
		text-align:center;
	}
</style>
</head>
<body>
<h1>등록내용</h1>
<%
	request.setCharacterEncoding("utf-8");
	Enumeration<String> e=request.getParameterNames();
	while(e.hasMoreElements()){
		String s=e.nextElement();
		out.print(s+" : "+request.getParameter(s)+"<br>"+"<br>");
	}
%>
<hr>
<a href="addr_form.jsp">주소 추가</a>
</body>
</html>