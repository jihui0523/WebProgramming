<%-- 20240852 컴퓨터학과 황지희 마이크로엣지--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>회원 가입</title>
    <style>
        table th, td, h1 {
        border: 1px solid black;
            font-weight: normal;
            text-align: center;
            align:center;
        }
        table{
        	border-collapse: collapse;
        }
        td.gray {
            background-color: rgb(236, 236, 236);
            text-align: center;
            font-weight: bold;
            width: 70px;
        }
        td.a{
        	text-align: left;
        }
    </style>
</head>
<body>
<form action="register.jsp">
<table>
    <tr>
        <td colspan="2" class="gray">회원 가입</td>
    </tr>
    <tr>
        <td class="gray">아이디</td>
        <td class="a"><input type="text" name="id" size=15>&nbsp;<input type="button" value="중복확인"></td>
    </tr>

    <tr>
        <td class="gray">패스워드</td>
        <td class="a"><input type="password" name="pw" size=15></td>
    </tr>

    <tr>
        <td class="gray">성별</td>
        <td class="a">
            <input type="radio" name="gender" value="0">남
            <input type="radio" name="gender" value="1" checked>여
        </td>
    </tr>
    <tr>
        <td class="gray">국적</td>
        <td class="a"><input type="text" value="대한민국">&nbsp;<input type="button" value="국적변경 " disabled></td>
    </tr>

    <tr>
        <td class="gray">휴대폰</td>
        <td class="a">
            <select name="phone1">
                <option value="010">010</option>
                <option value="031">031</option>
            </select>
            - <input type="text" name="phone2" size="4" maxlength="4">
			- <input type="text" name="phone3" size="4" maxlength="4">
        </td>
    </tr>

    <tr>
        <td class="gray">이메일</td>
        <td class="a"><input type="text" name="email" size=40></td>
    </tr>

    <tr>
        <td class="gray">생일</td>
        <td class="a"><input type="date" name="birth"></td>
    </tr>

    <tr>
        <td class="gray">관심분야</td>
        <td class="a">
            <input type="checkbox" name="hobby" value="0">뉴스
            <input type="checkbox" name="hobby" value="1" checked>맛집
            <input type="checkbox" name="hobby" value="2">책
            <input type="checkbox" name="hobby" value="3">영화
            <input type="checkbox" name="hobby" value="4">여행
        </td>
    </tr>
    <tr>
        <td class="gray">가입인사</td>
        <td class="a">
            <textarea name="comment" cols="50" rows="5" placeholder="회원들에게 간단한 가입인사를 남겨주세요"></textarea>
        </td>
    </tr>
    <tr>
        <td class="gray">증명사진</td>
        <td class="a"><input type="button" value="파일 선택">선택된 파일 없음</td>
    </tr>
    <tr>
        <td colspan="2" class="gray">
            <input type="submit" value="가입하기">
            <input type="reset" value="다시작성">
        </td>
    </tr>
</table>
</form>
</body>
</html>