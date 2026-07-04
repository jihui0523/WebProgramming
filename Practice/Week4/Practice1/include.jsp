<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<style>
	h2{
		text-align: center;
		margin: 30px 0;
	}
	 table, th, td, h1 {
        font-weight: normal;
    }
    table.t2{
    	margin: 20px 0 0 320px;
    }
</style>
<body>
	<h2>include 지시어 연습</h2>
	<hr>
	<table class="t2">
		<tr>
			<td><jsp:include page="calendar.jsp"></jsp:include></td>
			<td></td>
			<td><jsp:include page="news.jsp"></jsp:include></td>
		</tr>
	</table>	
</body>
</html>