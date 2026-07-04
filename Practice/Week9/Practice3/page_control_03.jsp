<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String un = request.getParameter("username");
    String pwd = request.getParameter("passwd");

    String qstr = "?username=" + java.net.URLEncoder.encode(un, "UTF-8")
                 + "&passwd=" + java.net.URLEncoder.encode(pwd, "UTF-8")
                 + "&src=page_control_03.jsp";

    response.sendRedirect("page_control_04.jsp" + qstr);
%>