<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>이클래스 로그인</title>
    <style>
        table, th, td, h1 {
            font-weight: normal;
            align: center;
        }
        input.b{
        	background-color: #fbfb9b;
        }
        td.a{
        	font-weight: bold;
        }
        div{
        	text-align:center;
        }
        table{
        	margin-left: auto;
    		margin-right: auto;
        }
    </style>
</head>
<body>
<div>
    <img src="image/eclass_title.jpg">
    <h2>로그인</h2>
    <hr>
    <form name ="frm1" action="welcome.jsp" method="post">
    <table>
        <tr>
            <td rowspan=5><img src="image/eclass_logo.png"></td>
            <td colspan=3 class="a">회원님의 아이디와 비밀번호를 정확히 입력하세요.</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
            	<select name="type">
            		<option>학부생</option>
            		<option>교직원</option>
            		<option>대학원생</option>
            	</select>          
            </td>
        </tr>
        <tr>
            <td class="a">아이디</td>
            <td><input type="text" name="id" class="b" size=15></td>
        </tr>
        <tr>
            <td class="a">비밀번호</td>
            <td><input type="text" name="pwd" class="b" size=15></td>
        </tr>
        <tr>
            <td colspan=4><input type="submit" value="로그인">&nbsp;<input type="button" value="가입하기"></td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>