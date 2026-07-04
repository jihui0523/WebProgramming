<%-- 20240852 컴퓨터학과 황지희 마이크로엣지 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<html>
<head>
<style>
.red { color: red; }
.green { color: green; }
.blue { color: blue; }
</style>
</head>
<body>
<%
    String lan = "unknown";
    String color = "black";

    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie ck : cookies) {
            if (ck.getName().equals("language"))
                lan = ck.getValue();
            if (ck.getName().equals("color"))
                color = ck.getValue();
        }
    }
%>
<form action="saveConfig.jsp" method="post">
    언어 :
    <select name="language">
        <option value="한국어">한국어</option>
        <option value="English">English</option>
    </select>
    색상 :
    <select name="color">
        <option value="red">red</option>
        <option value="green">green</option>
        <option value="blue">blue</option>
    </select>
    <input type="submit" value="저장하기">
</form>
<hr>
<p class="<%= color %>">
    설정된 언어: <%= lan %><br>
    설정된 색상: <%= color %>
</p>
</body>
</html>