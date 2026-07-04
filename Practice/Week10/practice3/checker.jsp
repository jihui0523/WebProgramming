<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String action = request.getParameter("action");

    if ("login".equals(action)) {

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        if (id != null && !id.equals("") && "1234".equals(pwd)) {
            session.setAttribute("user", id);
        }

        response.sendRedirect("init.jsp");
        return;

    } 
    else if ("logout".equals(action)) {
        session.invalidate(); 
        response.sendRedirect("init.jsp");
        return;
    }
%>