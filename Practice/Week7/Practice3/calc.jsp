<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Calculator</title>
    <style>
        image {
            align: center;
        }
        h1 {
            text-align: center;
            margin: 0px;
            font-family: "바탕", "Times New Roman", serif;
            font-weight: bold;
        }
        table, th, td{
            font-weight: normal;
            text-align: center;
        }
		td{
			border: 1px solid #DCDCDC;
		}
        table.t2 {
            margin: 20px 0 320px;
        }

        td.blue {
            background-color: rgb(50, 204, 253);
            height:55px;
        }
        input{
        	text-align:center;
        }
        td.a{
        	padding-right:50px;
        	padding-left:50px;
        }
        table{
        	margin-left: auto;
    		margin-right: auto;
        }
    </style>
</head>
<body>
<form name="form" action="calc_result.jsp" method="post">
    <table>
        <tr>
            <td colspan="2" class="blue">
                <h1>CalCuLaTor</h1>
            </td>
        </tr>
        <tr>
            <td>
                <img src="image/cal.jpg">
            </td>
            <td class="a">
                <input type="text" name="num2" value="0" size=8><br><br>
                <select name="op">
                	<option>+</option>
                	<option>-</option>
                	<option>*</option>
                	<option>/</option>
                </select><br><br>
                <input type="text" name="num1" value="0" size=8><br><br>
                <input type="submit" value="="><br><br>
                <input type="text" name="rslt" disabled size=8><br><br>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="blue"></td>
        </tr>
    </table>
</form>
</body>
</html>