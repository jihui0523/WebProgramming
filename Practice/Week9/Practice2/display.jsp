<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
</head>
<body>
<h1><br>response redirection 전달내용<br></h1>
<%
    Enumeration<String> e = request.getParameterNames();
    while(e.hasMoreElements()) {
        String name = e.nextElement();
        String value = request.getParameter(name);
        out.print(name + " : " + value + "<br>");
    }
%>
</body>
</html>