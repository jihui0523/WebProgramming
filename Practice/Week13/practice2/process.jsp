<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
</head>
<body>
	<br>
    <h2>Processing Parameters</h2>
    <br>
    
    <%!
    public int isAdult(String birth) {
    	String[] arr = birth.split("-");
        int birthYear = Integer.parseInt(arr[0]);
        
        return 2025 - birthYear;
    }
	%>
	
	 <%
        int age = isAdult(request.getParameter("birth"));
        pageContext.setAttribute("age", age);
    %>
    
    <p>id:${param.id}
    <p>pw:${param.pwd}
    <p>gender:${param.gender=='0'?"남성":"여성"}
    <p>phone1:${param.phone1=='0'?"010" 
 				:param.phone1=='1'?"011"
 				:param.phone1=='2'?"017"
 				:"070"}
    <p>phone2:${param.phone2}
    <p>phone3:${param.phone3}
    <p>email:${param.email}
    <p>birth:${param.birth}
    <hr>
    <p>${param.id}님은 ${pageScope.age>=20?"성년":"미성년"}입니다.
</body>
</html>