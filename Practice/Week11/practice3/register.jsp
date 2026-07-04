<%-- 20240852 컴퓨터학과 황지희 마이크로엣지--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<style>
		h1,p{
			text-align:center;
		}
	</style>
</head>
<body>
	<jsp:useBean id="UserBean" class="week11.w11.UserBean" scope="page" />
    <jsp:setProperty name="UserBean" property="*" />
	<h1>등록내용</h1>
	<p>이름:<%=UserBean.getId()%>
	<p>패스워드: <%=UserBean.getPw()%>
	<p>이메일: <%=UserBean.getEmail()%>
	<p>성별: <%=UserBean.getGender()%>
	<p>생일: <%=UserBean.getBirth()%>
	<hr>
	<p><%=UserBean.makeStmt()%>
</body>
</html>