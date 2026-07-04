<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>
<html>
<body>
<%
    Calendar cal = Calendar.getInstance();

    int year = cal.get(Calendar.YEAR);
    int month = cal.get(Calendar.MONTH); 
    int date = cal.get(Calendar.DATE);

    cal.set(year, month, 1);

    int day = cal.get(Calendar.DAY_OF_WEEK); 
    int start = cal.getMinimum(Calendar.DATE);
    int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

    String[] week = {"일","월","화","수","목","금","토"};

    out.print("오늘은 " + year + "년 " + (month+1) + "월 " + date + "일 " + week[cal.get(Calendar.DAY_OF_WEEK)+2] + "요일입니다.<br><br>");

    out.print("이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br><br>");

    Calendar birthday = Calendar.getInstance();
    birthday.set(2004, Calendar.MAY, 23); 
    int a = birthday.get(Calendar.DAY_OF_WEEK);
    out.print("내 생일 2004년 5월 23일은 " + week[a-1] + "요일입니다.<br><br>");
%>
</body>
</html>