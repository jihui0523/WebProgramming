<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<style>
	table {
        margin: 0 auto; 
    }
    h2 {
        text-align: center;  
    }
    .a {
        text-align: center;  
    }
</style>
</head>
<body>
<h2>주소록 등록</h2>
<hr>
<form name="form" action="addr_add.jsp" method="post">
<table border="1">
	<tr>
		<td>이름</td>
		<td><input type="text" name="이름"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="전화번호"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="이메일"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
			<select name="성별">
				<option>남</option>
				<option>여</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="a"><input type="submit" value="확인">&nbsp;<input type="reset" value="취소"></td>
	</tr>
</table>
</form>
</body>
</html>