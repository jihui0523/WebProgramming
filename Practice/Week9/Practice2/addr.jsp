<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
</head>
<body>
<form name="form" action="control.jsp" method="post">
<table>
	<tr>
		<td>이름:</td>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<td>전화번호:</td>
		<td><input type="text" name="tel"></td>
	</tr>
	<tr>
		<td>주소:</td>
		<td><input type="text" name="address"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;"><input type="submit" value="등록"></td>
	</tr>
</table>
</form>
</body>
</html>