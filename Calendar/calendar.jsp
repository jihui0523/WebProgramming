<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
<style>
table.t1 {
    width:1000px; 
    border-collapse:collapse; 
    border:1px solid black; 
    margin:40px auto; 
    text-align:left;
}
th.header {
    height:35px;             
    text-align:center;       
    font-size:18px;
    font-weight:bold;
    border:1px solid black;
}
td {
    border:1px solid black;
    font-size:18px; 
    height:70px;             
    width:140px; 
    padding:5px;
    vertical-align:top;
    text-align:left;         
}
th.red { color:#ff0a00; font-weight:bold; }
th.blue{ color:#0000FF; font-weight:bold; }
td.red { color:#ff0a00; }
td.blue{ color:#0000FF; }
span.red { color:#ff0a00; }
span.blue{ color:#0000FF; }
.days{
    display:flex; 
    justify-content:space-between; 
    align-items:center; 
    margin:0 80px; 
    padding:0; 
    font-size:20px; 
    font-weight:bold; 
}
.days span a{ margin:0 4px; }
.schedule{
    font-size:14px; 
    color:black;    
    display:block; 
    margin-top:4px;
}
</style>
</head>
<body>
<%!
public String colorDay(int year, int month, int day) {

    Calendar c = Calendar.getInstance();
    c.set(year, month - 1, day);   

    int weekday = c.get(Calendar.DAY_OF_WEEK); 

    if (weekday == Calendar.SUNDAY) {
        return "<span class='red'>" + day + "</span>";   // 일요일 빨강
    } else if (weekday == Calendar.SATURDAY) {
        return "<span class='blue'>" + day + "</span>";  // 토요일 파랑
    } else {
        return String.valueOf(day);
    }
}
%>
<%
    String sYear = request.getParameter("YEAR");//문자열로 연도 받음
    String sMonth = request.getParameter("MONTH");//문자열로 월 받음

    int Year, Month;
    
    if(sYear==null || sMonth==null){//처음 접속하면 오늘 날짜로 설정
        Calendar today = Calendar.getInstance();
        Year = today.get(Calendar.YEAR);
        Month = today.get(Calendar.MONTH)+1;
    } else {//특정 날짜를 보냈다면 그 날짜로 설정
        Year = Integer.parseInt(sYear);
        Month = Integer.parseInt(sMonth);
    }

    Calendar today = Calendar.getInstance();//오늘 날짜 저장
    
    int TodayYear = today.get(Calendar.YEAR);//오늘 연도
    int TodayMonth = today.get(Calendar.MONTH)+1;//오늘 달
    int TodayDate = today.get(Calendar.DATE);//오늘 일

    int preMonth = Month - 1;//저번 달
    int nextMonth = Month + 1;//다음 달
    int preYear = Year;//월때문에 연도 바뀔때 사용
    int nextYear = Year;//월때문에 연도 바뀔때 사용
    
    if(preMonth==0){ //1월에서 전 달로 이동
    	preMonth=12; //12월로 감
        preYear=Year-1; //연도는 작년으로
    }
    
    if(nextMonth==13){ //12월일 때
    	nextMonth=1; //1월로 감
        nextYear=Year+1; //연도는 내년으로
    }

    HashMap<String,String> dmap = (HashMap<String,String>)session.getAttribute("diary");//일정 가져오기
    if(dmap==null) {//첫 접속이면 일정 없으니 생성
    	dmap = new HashMap<>();
    }

    Calendar cal = Calendar.getInstance();//달력 그릴 때 쓸 객체
    cal.set(Year, Month-1, 1);
    int firstDateWeekday = cal.get(Calendar.DAY_OF_WEEK);//첫번쨰 날의 요일 저장
    int lastDateOfMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//이번 달이 며칠까지 있는지 저장
%>
<p class="days">
<span>
    <a href="calendar.jsp?YEAR=<%=Year-1%>&MONTH=<%=Month%>">◀</a><%--Year-1로 안하면 오류남--%>
    <%=Year%>년
    <a href="calendar.jsp?YEAR=<%=Year+1%>&MONTH=<%=Month%>">▶</a><%--Year+1로 안하면 오류남--%>
</span>
<span>
    <a href="calendar.jsp?YEAR=<%=preYear%>&MONTH=<%=preMonth%>">◀</a>
    <%=Month%>월
    <a href="calendar.jsp?YEAR=<%=nextYear%>&MONTH=<%=nextMonth%>">▶</a>
</span>
<span>
    <%=TodayYear%>-<%=String.format("%02d", TodayMonth)%>-<%=String.format("%02d", TodayDate)%><%--오늘 날자 출력 --%>
</span>
</p>
<table class="t1">
<tr>
<th class="header red">일</th>
<th class="header">월</th>
<th class="header">화</th>
<th class="header">수</th>
<th class="header">목</th>
<th class="header">금</th>
<th class="header blue">토</th>
</tr>
<tr>
<%
int dayCount=1;//날짜를 세는 포인터같은 역할

for(int i=1;i<firstDateWeekday;i++){//달력 첫 줄의 앞부분 빈칸을 생성
    out.println("<td>&nbsp;</td>");
    dayCount++;
}

for(int day=1; day<=lastDateOfMonth; day++){

    String dateKey = Year+"-"+String.format("%02d",Month)+"-"+String.format("%02d",day);//일정의 날짜를 문자열로 저장
    String schedule = dmap.containsKey(dateKey)? "<span class='schedule'>"+dmap.get(dateKey)+"</span>": "&nbsp;";//스케쥴 가져오기(스케쥴이 있으면 출력, 없으면 공백)
    String dayString;

    dayString = colorDay(Year, Month,day) + "<br>" + schedule;//토,일에 색깔 입혀서, 그 외는 검정색으로 요일 출력

    out.println("<td>"+dayString+"</td>");

    if(dayCount%7==0){//일주일 체크
        out.println("</tr>");//다음 줄 생성
        if(day!=lastDateOfMonth) {//마지막 날에는 새로운 줄을 안 만듦
            out.println("<tr>");
        }
    }

    dayCount++;
}

while((dayCount-1)%7!=0){//나머지 빈칸 채우기
    out.println("<td>&nbsp;</td>");
    dayCount++;
}
%>
</tr>
</table>
<hr>
<form action="add.jsp" method="get" style="text-align:center; margin-top:20px;">
    날짜: <input type="date" name="date">
    일정: <input type="text" name="task" size="40">
    <input type="submit" value="등록하기">
</form>
</body>
</html>