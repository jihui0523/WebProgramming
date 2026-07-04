<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<style>
	table.t1{
		width: 400px;
		border-collapse: collapse;
		border: 1px solid black;
	}
	td, th {
    	padding: 10px 10px; 
	}
	table, td, th{
		text-align: center;
	}
	th{
		font-size:20px;
	}
	th.red{
		color:#ff0a00;
	}
	th.blue{
		color:#0000FF;
	}
</style>
<body>
	<table border="1" class="t1">
	<tr>
		<th class="red">일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th class="blue">토</th>
	</tr>
	<tr>
	<%for(int i = 0; i < 5; i++){ %>
		<tr>
			<%for(int j = 0; j < 7; j++){ %>
				<td>&nbsp;</td>
			<%} %>
		</tr>
	<%}%>
	</table>
</body>
</html>