<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>
<html>
<body>
<%
    int year = 1919;
    int month = 3; 
    Calendar cal = Calendar.getInstance();
    cal.set(year, month-1, 1); 

    out.println("<h1>" + year + "년 " + month + "월</h1>");
%>
<hr>
<%
    int start = cal.get(Calendar.DAY_OF_WEEK); 
    int last = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

    int count = 0;

    for(int i=1; i<start; i++){
        out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"); 
        count++;
    }

    for(int i=1; i<=last; i++){
        if(i < 10){
            out.print("&nbsp;" + i + "&nbsp;&nbsp;"); 
        } else {
            out.print(i + "&nbsp;&nbsp;"); 
        }
        count++;
        if(count % 7 == 0){
            out.print("<br>");
        }
    }
%>
</body>
</html>