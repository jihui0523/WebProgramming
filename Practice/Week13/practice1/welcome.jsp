<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>로그인 결과</title>
</head>
<body>
	<h2>입력 내용</h2>
	<p>아이디: ${!(empty param.id)?param.id:"아이디가 입력되지 않았습니다"}
	<p>패스워드: ${(param.pwd=="1234")?param.pwd:"패스워드가 입력되지 않았습니다"}
	<hr>	
	<p>${!(empty param.id) and (param.pwd=="1234")?"로그인 성공":"로그인 실패"}</p>
</body>
</html>