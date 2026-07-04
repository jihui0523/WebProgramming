<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String u = (String)session.getAttribute("user"); 
%>
<table>
    <tr>
        <td rowspan="2">
            <img src="image/eclass_logo.png">
        </td>
        <td>
            <h3><%= u %> 님 환영합니다!</h3>
        </td>
    </tr>
    <tr>
        <td>
            <form action="checker.jsp" method="post"> 
                <input type="hidden" name="action" value="logout">
                <input type="submit" value="로그아웃">
            </form>
        </td>
    </tr>
</table>