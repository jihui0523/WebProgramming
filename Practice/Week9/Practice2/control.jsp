<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	String qstr = "?";
	boolean plus = true;

	Enumeration<String> e = request.getParameterNames();
	while(e.hasMoreElements()){
		String name = e.nextElement();
		String value = request.getParameter(name);

		if(!plus){
			qstr += "&";
		}
		qstr += (name + "=" + java.net.URLEncoder.encode(value, "UTF-8"));
		plus = false;
	}

	response.sendRedirect("display.jsp" + qstr);
%>