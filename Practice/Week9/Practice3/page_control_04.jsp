<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
</head>
<body>
	<p><%= request.getParameter("src") %>에서 출력된 내용입니다.</p>
    <p>page_control_04.jsp에서 출력합니다.</p>
    <hr>
    <p>넘겨받은 파라미터들:</p>
    <%
        Enumeration<String> e = request.getParameterNames();
        while (e.hasMoreElements()) {
            String s = e.nextElement();
            out.println(s + " : " + request.getParameter(s) + "<br>");
        }
    %>
    <hr>
    <p>안녕하세요, <%= request.getParameter("username") %>님. 반갑습니다.</p>
    <hr>
</body>
</html>