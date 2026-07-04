<%-- 20240852 컴퓨터학과 황지희 마이크로엣지 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<html>
<head></head>
<body>
<%
    String lan = request.getParameter("language");
    String color = request.getParameter("color");

    Cookie cookie_lan = new Cookie("language", lan);
    Cookie cookie_color = new Cookie("color", color);

    cookie_lan.setMaxAge(3 * 60);
    cookie_color.setMaxAge(3 * 60);

    response.addCookie(cookie_lan);
    response.addCookie(cookie_color);
%>
<p>language=<%= lan %><br>
color=<%= color %></p>
<hr>
<a href="init.jsp">설정으로 가기</a>
</body>
</html>