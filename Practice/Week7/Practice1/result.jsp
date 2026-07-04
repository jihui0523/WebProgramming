<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
</head>
<body>
    <br>
    <h2>전달된 파라미터 이름들</h2>
    <br>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
        Enumeration<String> paraNames = request.getParameterNames();
        while (paraNames.hasMoreElements()) {
            String name = paraNames.nextElement();
            out.print(name + "<br>");
        }
    %>
    <hr>
    <%
        Enumeration<String> paraNames2 = request.getParameterNames();
        while (paraNames2.hasMoreElements()) {
            String name = paraNames2.nextElement();
            out.print(name + ": ");
            String paramValue = request.getParameter(name);
            out.print(paramValue + "<br>");
        }
    %>
</body>
</html>