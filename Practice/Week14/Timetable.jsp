<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<style>
    table {
        margin: 10px auto;
        width: 500px;                 
    }
    td, th {
    	padding: 10px 10px; 
	}
	th{
		font-weight: bold;
		font-size:20px;
	}
    h1 {
    	padding: 10px 10px;
        text-align: center;
    }
</style>
<body>
<h1>구구단 출력</h1>
<hr>
<table border="1">
	<c:forEach var="i" begin="0" end="1">
        <tr>
        	<c:forEach var="j" begin="0" end="3">  
                   <c:set var="l" value="2 + i * 4 + j"/> 
                   <c:if test="${l <= 9}" var="result">
                		<td>
                		<c:forEach var="k" begin="1" end="9"> 
                        	<p>${l} * ${k} = ${l*k}<br>
                    	</c:forEach>
                		</td>
            		</c:if>
			</c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>