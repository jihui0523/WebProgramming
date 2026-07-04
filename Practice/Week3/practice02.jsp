<%-- 20240852 컴퓨터학과 황지희 --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <% 
       for (int i = 0; i < 2; i++) {   
    %>
        <tr>
            <% 
               for (int j = 0; j < 4; j++) {   
                   int l = 2 + i * 4 + j; 
                   if (l <= 9) { 
            %>
                <td>
                    <% for (int k = 1; k < 10; k++) { %>
                        <%= l %> * <%= k %> = <%= l * k %><br>
                    <% } %>
                </td>
            <% } %>
		<% } %>
        </tr>
    <% } %>
</table>
</body>
</html>