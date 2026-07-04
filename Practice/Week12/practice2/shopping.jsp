<%-- 20240852 컴퓨터학과 황지희 마이크로엣지 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<html>
<head></head>
<body>
<h2>Shopping Cart</h2>
<form action="addCookies.jsp" method="post">
    마음에 드는 물건:
    <select name="item">
        <option value="노트북">노트북</option>
        <option value="마우스">마우스</option>
        <option value="키보드">키보드</option>
        <option value="모니터">모니터</option>
        <option value="스마트폰">스마트폰</option>
        <option value="데스크탑">데스크탑</option>
    </select>
    <input type="submit" value="담아두기">
</form>
<hr>
<h2>나의 리스트</h2>
<p>
<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        boolean empty = true;

        for (Cookie ck : cookies) {
            String name = ck.getName();

            if (name.indexOf("cart_") == 0) {
            	empty=false;
                out.println(ck.getValue() + "<br>");
            }
        }
    }
%>
</p>
</body>
</html>