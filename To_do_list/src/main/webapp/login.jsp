<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.modify{
		position : absolute;
		top : 50%;
		left : 50%;
		transform: translate(-50%,-50%)
	}
</style>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
<div class = "modify">
<h1 align="center">To do list</h1>
<br><br>
<table>
<tr>
<td align="right">아이디 : </td>
<td><input type="text" size ="20" name="uId"></td>
</tr>
<tr>
<td align="right">비밀번호 : </td>
<td><input type="text" size ="20" name="uPw"></td>
</tr>
<tr>
<td></td>
<td colspan="3"><input type="button" value="로그인" size="50"></td>
</tr>
</table>
<br><br>
<table>
<tr>
<td><a href="adduser.do"><input type="button" value="회원가입"></a></td>
<td></td><td></td><td></td><td></td><td></td>
<td><a href="finduserId.do"><input type="button" value="아이디 찾기"></a></td>
<td></td><td></td><td></td><td></td><td></td>
<td><a href="finduserPw.do"><input type="button" value="비밀번호 찾기"></a></td>
</tr>
</table>
</div>
</body>
</html>