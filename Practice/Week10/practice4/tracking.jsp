<%-- 20240852 컴퓨터학과 황지희 마이크로엣지--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
</head>
<body>
	<h1>관리자 정보 출력</h1>
	<%
    String name = request.getParameter("id");
    String location = request.getParameter("location");

    application.setAttribute("name", name);
    application.setAttribute("location", location);
    application.setAttribute("time", new Date());

    String managerName = (String)application.getAttribute("name");
    String managerLocation = (String)application.getAttribute("location");
    Date loginTime = (Date)application.getAttribute("time");
    String sessionId = session.getId();
    
    out.println("관리자 이름: "+managerName+"<br>");
    out.println("로그인 위치: "+managerLocation+"<br>");
    out.println("로그인 시각: "+loginTime+"<br>"+"<br>");
    out.println("출력시 세션: "+sessionId);
	%>
</body>
</html>