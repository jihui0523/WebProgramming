<%-- 20240852 컴퓨터학과 황지희 마이크로엣지 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<%!  
    int cnt = 0;   
%>
<html>
<head></head>
<body>
<%
    String item = request.getParameter("item");

    cnt++;
    String cartNum = String.format("%03d", cnt);   

    Cookie cartCookie = new Cookie("cart_" + cartNum, item);

    cartCookie.setMaxAge(3 * 60); 
    response.addCookie(cartCookie);

    out.println("쿠키로 추가: " + item);
%>
<hr>
<a href="shopping.jsp">장바구니로 이동</a>
</body>
</html>