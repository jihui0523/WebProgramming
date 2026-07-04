<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
    <jsp:useBean id="login" class="week11.w11.Login" scope="page" />
    <jsp:setProperty name="login" property="*" />

    <%
        int flag = login.checkLogin();

        if (flag == 0) {
            out.println(login.getId() + "님 환영합니다.");
        } else if (flag == -1) {
            out.println("잘못된 패스워드: " + login.getPwd());
        } else {
            out.println("잘못된 아이디: " + login.getId());
        }
    %>
</body>
</html>