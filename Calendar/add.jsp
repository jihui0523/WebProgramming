<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%
    HashMap<String, String> dmap = (HashMap<String, String>)session.getAttribute("diary");
    if(dmap == null) {
    	dmap = new HashMap<>();
    }

    String date = request.getParameter("date");
    String task = request.getParameter("task");

    if(date != null && !date.isEmpty() && task != null && !task.isEmpty()){
        dmap.put(date, task);
        session.setAttribute("diary", dmap);

        String[] num = date.split("-");
        String year = num[0];
        String month = num[1];

        response.sendRedirect("calendar.jsp?YEAR="+year+"&MONTH="+month);
    } else {
        Calendar today = Calendar.getInstance();
        response.sendRedirect("calendar.jsp?YEAR="+today.get(Calendar.YEAR)+"&MONTH="+(today.get(Calendar.MONTH)+1));
    }
%>