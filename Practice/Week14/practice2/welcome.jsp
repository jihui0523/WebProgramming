<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
    <jsp:useBean id="login" class="week14.w14.Login" scope="page" />
    <jsp:setProperty name="login" property="*" />
	
	<c:set var="flag" value="${login.checkLogin()}"/>

	<c:choose>
    	<c:when test="${flag == 0}">
        	${login.id}님 환영합니다.<br>
    	</c:when>
    	<c:when test="${flag == -1}">
        	잘못된 패스워드: ${login.pwd}<br>
    	</c:when>
    	<c:otherwise>
        	잘못된 아이디: ${login.id}<br>
    	</c:otherwise>
	</c:choose>
</body>
</html>